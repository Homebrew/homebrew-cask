cask "raycast" do
  version "1.31.0"
  sha256 :no_check

  url "https://api.raycast.app/v2/download"
  name "Raycast"
  desc "Control your tools with a few keystrokes"
  homepage "https://raycast.app/"

  livecheck do
    url :url
    strategy :header_match
    regex(/Raycast[._-]v?(\d+(?:\.\d+)+)[._-]universal\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Raycast.app"

  uninstall quit: "com.raycast.macos"

  zap trash: [
    "~/Library/Application Support/com.raycast.macos",
    "~/Library/Caches/com.raycast.macos",
    "~/Library/Cookies/com.raycast.macos.binarycookies",
    "~/Library/Preferences/com.raycast.macos.plist",
  ]
end
