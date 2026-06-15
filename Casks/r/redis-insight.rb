cask "redis-insight" do
  arch arm: "arm64", intel: "x64"

  version "3.6.0"
  sha256 arm:   "495effc0ebdfc9a81c3bdf49a8fb3ed3d1b6c21e96b79077093e91be9412cf3f",
         intel: "94aba47779635dac762492e0f41e8178acc9f66aff627c7e77446d3ccdac2039"

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
  depends_on macos: :monterey

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
