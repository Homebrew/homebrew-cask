cask "redisinsight" do
  version "2.0.5"
  sha256 :no_check

  url "https://download.redisinsight.redis.com/latest/RedisInsight-v2-mac-x64.dmg"
  name "RedisInsight"
  desc "GUI for streamlined Redis application development"
  homepage "https://redis.com/redis-enterprise/redis-insight/"

  livecheck do
    url "https://github.com/RedisInsight/RedisInsight.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "RedisInsight-v2.app", target: "RedisInsight.app"

  zap trash: [
    "~/Library/Preferences/org.RedisLabs.RedisInsight-V2.plist",
    "~/Library/Saved Application State/org.RedisLabs.RedisInsight-V2.savedState",
  ]
end
