cask "redisinsight" do
  version "1.11.0"
  sha256 "c3fcaf5ba461e7e39ee35f70d5d374d903e29a16d321e5ff77d0d7fb97f3253a"

  url "https://downloads.redisinsight.redislabs.com/#{version}/redisinsight-mac.dmg"
  name "RedisInsight"
  desc "GUI for streamlined Redis application development"
  homepage "https://www.redislabs.com/redisinsight/"

  livecheck do
    url "https://downloads.redisinsight.redislabs.com/latest/redisinsight-mac.dmg"
    strategy :header_match
  end

  app "RedisInsight.app"

  zap trash: "~/Library/Saved Application State/com.redislabs.redisinsight.savedState"
end
