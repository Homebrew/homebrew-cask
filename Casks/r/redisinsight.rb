cask "redisinsight" do
  arch arm: "arm64", intel: "x64"

  version "2.50.0"
  sha256 :no_check

  url "https://s3.amazonaws.com/redisinsight.download/public/latest/Redis-Insight-mac-#{arch}.dmg",
      verified: "s3.amazonaws.com/redisinsight.download/"
  name "RedisInsight"
  desc "GUI for streamlined Redis application development"
  homepage "https://redis.com/redis-enterprise/redis-insight/"

  # The first-party site doesn't publish public version information (the page
  # requires users to submit contact information to download files). We check
  # GitHub releases as a best guess of when a new version is released.
  livecheck do
    url "https://github.com/RedisInsight/RedisInsight"
    strategy :git
  end

  auto_updates true

  app "Redis Insight.app"

  zap trash: [
    "~/Library/Preferences/org.RedisLabs.RedisInsight-V#{version.major}.plist",
    "~/Library/Saved Application State/org.RedisLabs.RedisInsight-V#{version.major}.savedState",
  ]
end
