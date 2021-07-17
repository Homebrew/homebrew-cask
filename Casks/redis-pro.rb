cask "redis-pro" do
  version "1.2.0"
  sha256 "2564ff0e161533256a34bb3efc1e11274525f596360c42315df6c83397e4193b"

  url "https://github.com/cmushroom/redis-pro/releases/download/#{version}/redis-pro.dmg"
  name "redis-pro"
  desc "Redis desktop"
  homepage "https://github.com/cmushroom/redis-pro"

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
