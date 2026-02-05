cask "redis-insight" do
  arch arm: "arm64", intel: "x64"

  version "3.0.2"
  sha256 arm:   "7fdc10124c2a5f9ca5bd9af38bcd7beb99b4db2e2dcdc0d3c5855a84577c4fe9",
         intel: "18341722251abdd06c52c94a1819328773cd905ceced80ee06acbbd599571cda"

  url "https://s3.amazonaws.com/redisinsight.download/public/releases/#{version}/Redis-Insight-mac-#{arch}.dmg",
      verified: "s3.amazonaws.com/redisinsight.download/"
  name "Redis Insight"
  desc "GUI for streamlined Redis application development"
  homepage "https://redis.io/insight/"

  livecheck do
    url "https://s3.amazonaws.com/redisinsight.download/public/upgrades-v#{version.major}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Redis Insight.app"

  zap trash: [
    "~/.redisinsight-app",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.redislabs.redisinsight-v#{version.major}.sfl*",
    "~/Library/Application Support/RedisInsight",
    "~/Library/Caches/org.RedisLabs.RedisInsight-V#{version.major}",
    "~/Library/Caches/org.RedisLabs.RedisInsight-V#{version.major}.ShipIt",
    "~/Library/HTTPStorages/org.RedisLabs.RedisInsight-V#{version.major}",
    "~/Library/Logs/RedisInsight",
    "~/Library/Preferences/org.RedisLabs.RedisInsight-V#{version.major}.plist",
    "~/Library/Saved Application State/org.RedisLabs.RedisInsight-V#{version.major}.savedState",
  ]
end
