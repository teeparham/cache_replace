require 'test_helper'

module CacheRocket
  class KeyTest < Test::Unit::TestCase

    context "#cache_replace_key" do
      should "return key with prefix" do
        class KeyFake
          include Key
        end

        key = KeyFake.new
        assert_equal CacheRocket::Key::CACHE_REPLACE_KEY_OPEN + "some/thing>", key.cache_replace_key("some/thing")
      end
    end

  end
end