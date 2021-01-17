cask "redisinsight" do
  version "1.9.0"
  sha256 "4c5e125784229f69dc2a39baf3fb48091ae35101ac12647fd0d7a03e34ddcc6e"

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
