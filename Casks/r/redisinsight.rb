cask "redisinsight" do
  arch arm: "arm64", intel: "x64"

  version "2.64.1"
  sha256 :no_check

  url "https://s3.amazonaws.com/redisinsight.download/public/latest/Redis-Insight-mac-#{arch}.dmg",
      verified: "s3.amazonaws.com/redisinsight.download/"
  name "RedisInsight"
  desc "GUI for streamlined Redis application development"
  homepage "https://redis.com/redis-enterprise/redis-insight/"

  livecheck do
    url "https://s3.amazonaws.com/redisinsight.download/public/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Redis Insight.app"

  zap trash: [
    "~/Library/Preferences/org.RedisLabs.RedisInsight-V#{version.major}.plist",
    "~/Library/Saved Application State/org.RedisLabs.RedisInsight-V#{version.major}.savedState",
  ]
end
