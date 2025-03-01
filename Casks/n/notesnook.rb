cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.29"
  sha256 arm:   "d5fff947a7e063c80d03590a57953c8a21cdd04d7822ca1d8d8eb5795a6c1680",
         intel: "26502e16aacedfd8226a9d6f281016f06c4c775fc93ddc4a719326993f0dbc7e"

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_mac_#{arch}.dmg",
      verified: "github.com/streetwriters/notesnook/"
  name "Notesnook"
  desc "Privacy-focused note taking app"
  homepage "https://notesnook.com/"

  livecheck do
    url "https://notesnook.com/api/v1/releases/darwin/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
