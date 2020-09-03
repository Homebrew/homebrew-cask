cask "redisinsight" do
  version "1.6.3"
  sha256 "337ebb483582742749a1a9312d35e06b4f82f3b8dd5b79523744073f4bc635e6"

  url "https://downloads.redisinsight.redislabs.com/#{version}/redisinsight-mac.dmg"
  appcast "https://docs.redislabs.com/latest/ri/release-notes/",
          must_contain: version.major_minor
  name "RedisInsight"
  homepage "https://www.redislabs.com/redisinsight/"

  app "redisinsight.app"

  zap trash: "~/Library/Saved Application State/com.redislabs.redisinsight.savedState"
end
