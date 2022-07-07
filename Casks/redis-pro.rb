cask "redis-pro" do
  version "2.1.0"
  sha256 "73f98f06c4a7122eb72ad68373c6055aeb7678bc6325cf6e5c47fdad1186b1df"

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
