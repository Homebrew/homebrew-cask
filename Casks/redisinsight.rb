cask "redisinsight" do
  version "1.7.0"
  sha256 "e5ffafb82727498a9b04d265cddc4d7c07fbe9e6501e58b7ce244b97f3805f97"

  url "https://downloads.redisinsight.redislabs.com/#{version}/redisinsight-mac.dmg"
  appcast "https://docs.redislabs.com/latest/ri/release-notes/",
          must_contain: version.major_minor
  name "RedisInsight"
  homepage "https://www.redislabs.com/redisinsight/"

  app "redisinsight.app"

  zap trash: "~/Library/Saved Application State/com.redislabs.redisinsight.savedState"
end
