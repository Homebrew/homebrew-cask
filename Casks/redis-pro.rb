cask "redis-pro" do
  version "2.4.0"
  sha256 "d30207a75e2e1be6f7b74a053137e5cc4fb9fca9db95a7379c943cb54c4be226"

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
