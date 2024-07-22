cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.12"
  sha256 arm:   "68ccf8dd5551b1e5b2324b1faa2748ad71cc5857aab87d959b2c280c261a37b4",
         intel: "b7b6b712717c7fcb08eef10bb8d654722caf0aa78329da587bd89d2964b51117"

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

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
