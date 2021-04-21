cask "redisinsight" do
  version "1.10.0"
  sha256 "e2c096e340fd2d415969106d8ddc2574fd7e65a006e583aa5996ba07b47091b1"

  url "https://downloads.redisinsight.redislabs.com/#{version}/redisinsight-mac.dmg"
  name "RedisInsight"
  homepage "https://www.redislabs.com/redisinsight/"

  livecheck do
    url "https://downloads.redisinsight.redislabs.com/latest/redisinsight-mac.dmg"
    strategy :header_match
  end

  app "RedisInsight.app"

  zap trash: "~/Library/Saved Application State/com.redislabs.redisinsight.savedState"
end
