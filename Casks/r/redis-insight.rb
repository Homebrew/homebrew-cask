cask "redis-insight" do
  arch arm: "arm64", intel: "x64"

  version "3.4.1"
  sha256 arm:   "bbc77c6b6e9c0de675ebcc026ec78cc4e61dbac75a228a86014cb3437b4f2bdb",
         intel: "f0aa8edd6e6cc4c42818127d146670765179ab4ac481d67ec73fdec38b32db7c"

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
