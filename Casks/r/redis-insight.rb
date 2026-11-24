cask "redis-insight" do
  arch arm: "arm64", intel: "x64"

  version "3.10.2"
  sha256 arm:   "0fd7a18c8c6ba4fe0985b0d30c21fd7b55facb41499dff1e7cf3d58a9cf5b743",
         intel: "771162bfbebe76b80eb324324dbcfa06ffe7f0c8c7a08ab9ea7d637f11bb94c1"

  url "https://s3.amazonaws.com/redisinsight.download/public/releases/#{version}/Redis-Insight-mac-#{arch}.dmg"
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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.redislabs.redisinsight-v*.sfl*",
    "~/Library/Application Support/RedisInsight",
    "~/Library/Caches/org.RedisLabs.RedisInsight-V*",
    "~/Library/Caches/org.RedisLabs.RedisInsight-V*.ShipIt",
    "~/Library/HTTPStorages/org.RedisLabs.RedisInsight-V*",
    "~/Library/Logs/RedisInsight",
    "~/Library/Preferences/org.RedisLabs.RedisInsight-V*.plist",
    "~/Library/Saved Application State/org.RedisLabs.RedisInsight-V*.savedState",
  ]
end
