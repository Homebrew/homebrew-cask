cask "redisinsight" do
  version "1.8.0"
  sha256 "c1675342b848d41357afd5a436b1660a3cb1faa160f2fd5b9ef829c7db9aa83a"

  url "https://downloads.redisinsight.redislabs.com/#{version}/redisinsight-mac.dmg"
  appcast "https://docs.redislabs.com/latest/ri/release-notes/",
          must_contain: version.major_minor
  name "RedisInsight"
  homepage "https://www.redislabs.com/redisinsight/"

  app "redisinsight.app"

  zap trash: "~/Library/Saved Application State/com.redislabs.redisinsight.savedState"
end
