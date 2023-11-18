cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.6.9"
  sha256 arm:   "9f90d3c8c5781ff6f526ee36558ac55660b11cdb3fde8366eb1a09ec4abb3b0b",
         intel: "6aca3a9067ce70695bc5ca817116d2db4f7f8d227f18a63b64e1cc23544c82db"

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_mac_#{arch}.dmg",
      verified: "github.com/streetwriters/notesnook/"
  name "Notesnook"
  desc "Privacy-focused note taking app"
  homepage "https://notesnook.com/"

  livecheck do
    url "https://notesnook.com/releases/darwin/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
