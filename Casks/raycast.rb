cask "raycast" do
  version "1.50.5"
  sha256 "91a0d2fed13bc6b65cc0898650654fb05b4dc1ea9f056d605ddca15a20b08285"

  url "https://releases.raycast.com/releases/#{version}/download?build=universal"
  name "Raycast"
  desc "Control your tools with a few keystrokes"
  homepage "https://raycast.com/"

  livecheck do
    url :url
    regex(/Raycast[._-]v?(\d+(?:\.\d+)+)(?:[._-](\h+))[._-]universal\.dmg/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Raycast.app"

  uninstall quit: "com.raycast.macos"

  zap trash: [
    "~/Library/Application Support/com.raycast.macos",
    "~/Library/Caches/com.raycast.macos",
    "~/Library/Cookies/com.raycast.macos.binarycookies",
    "~/Library/Preferences/com.raycast.macos.plist",
  ]
end
