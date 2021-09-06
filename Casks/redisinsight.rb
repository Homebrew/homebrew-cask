cask "redisinsight" do
  version "1.10.1"
  sha256 "2f6ff3044a75740549fe7bd452cdfbfb1aa6b9c04c3b85a4ab727875d68c4eee"

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
