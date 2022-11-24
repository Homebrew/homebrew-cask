cask "redisinsight" do
  arch arm: "arm64", intel: "x64"

  version "2.12.0"
  sha256 :no_check

  url "https://download.redisinsight.redis.com/latest/RedisInsight-v#{version.major}-mac-#{arch}.dmg"
  name "RedisInsight"
  desc "GUI for streamlined Redis application development"
  homepage "https://redis.com/redis-enterprise/redis-insight/"

  livecheck do
    url "https://github.com/RedisInsight/RedisInsight.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "RedisInsight-v#{version.major}.app", target: "RedisInsight.app"

  zap trash: [
    "~/Library/Preferences/org.RedisLabs.RedisInsight-V#{version.major}.plist",
    "~/Library/Saved Application State/org.RedisLabs.RedisInsight-V#{version.major}.savedState",
  ]
end
