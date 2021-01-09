cask "redisinsight" do
  version "1.8.3"
  sha256 "2afd454e19eaa1b1949d2154e7f28ec35c4a090e44bdd06bec8758fecd180a94"

  url "https://downloads.redisinsight.redislabs.com/#{version}/redisinsight-mac.dmg"
  appcast "https://docs.redislabs.com/latest/ri/release-notes/",
          must_contain: version.major_minor
  name "RedisInsight"
  homepage "https://www.redislabs.com/redisinsight/"

  app "RedisInsight.app"

  zap trash: "~/Library/Saved Application State/com.redislabs.redisinsight.savedState"
end
