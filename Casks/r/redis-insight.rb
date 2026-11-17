cask "redis-insight" do
  arch arm: "arm64", intel: "x64"

  version "3.10.0"
  sha256 arm:   "9d78d4cebca92578ce764afc573f2c4f2aa493a8817451883b9d9d2c96ce3596",
         intel: "e9f1662f1436c04c4dfe7b2a9f81096172276ec21f76821cf00facc0111d459c"

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
