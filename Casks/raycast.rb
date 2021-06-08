cask "raycast" do
  version "1.17.1"
  sha256 :no_check

  url "https://api.raycast.app/v2/download"
  name "Raycast"
  desc "Control your tools with a few keystrokes"
  homepage "https://raycast.app/"

  livecheck do
    url :url
    strategy :header_match
    regex(/Raycast_v?(\d+(?:\.\d+)*)_universal\.dmg/i)
  end

  auto_updates true

  app "Raycast.app"

  zap trash: [
    "~/Library/Application Support/com.raycast.macos",
    "~/Library/Caches/com.raycast.macos",
    "~/Library/Preferences/com.raycast.macos.plist",
  ]
end
