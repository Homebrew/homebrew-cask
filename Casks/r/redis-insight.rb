cask "redis-insight" do
  arch arm: "arm64", intel: "x64"

  version "3.4.0"
  sha256 arm:   "de4987bbeb69f48354df8badeaf5a98fd5cd643b22b770ac232a047c66d8932d",
         intel: "d97b8e44fbc4ce191898c00fb45e53c4f4664b0b377812501b3f690775c5cd33"

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
