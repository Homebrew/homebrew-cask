cask "redis-pro" do
  version "2.5.2"
  sha256 "45adfeb225a795740060ee43d31c3b0a34542416941cbd60f84c1c51c22e1ca0"

  url "https://github.com/cmushroom/redis-pro/releases/download/#{version}/redis-pro.dmg"
  name "redis-pro"
  desc "Redis desktop"
  homepage "https://github.com/cmushroom/redis-pro"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "redis-pro.app"

  zap trash: [
    "~/Library/Application Scripts/com.cmushroom.redis-pro",
    "~/Library/Application Support/com.cmushroom.redis-pro",
    "~/Library/Caches/com.cmushroom.redis-pro",
    "~/Library/Containers/com.cmushroom.redis-pro",
    "~/Library/Preferences/com.cmushroom.redis-pro.plist",
    "~/Library/Saved Application State/com.cmushroom.redis-pro.savedState",
  ]
end
