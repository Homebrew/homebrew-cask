cask "redisinsight" do
  arch arm: "arm64", intel: "x64"

  version "2.40.0"
  sha256 :no_check

  url "https://download.redisinsight.redis.com/latest/RedisInsight-mac-#{arch}.dmg"
  name "RedisInsight"
  desc "GUI for streamlined Redis application development"
  homepage "https://redis.com/redis-enterprise/redis-insight/"

  # The first-party site doesn't publish public version information (the page
  # requires users to submit contact information to download files). We check
  # GitHub releases as a best guess of when a new version is released.
  livecheck do
    url "https://github.com/RedisInsight/RedisInsight"
    strategy :github_latest
  end

  app "RedisInsight.app"

  zap trash: [
    "~/Library/Preferences/org.RedisLabs.RedisInsight-V#{version.major}.plist",
    "~/Library/Saved Application State/org.RedisLabs.RedisInsight-V#{version.major}.savedState",
  ]
end
