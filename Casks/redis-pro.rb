cask "redis-pro" do
  version "2.2.0"
  sha256 "63e47090a849295403045cfd8ba527a3aca71b9368343ffd21c94d2702b2c87e"

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
