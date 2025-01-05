cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.23"
  sha256 arm:   "276654c4730159c0e9f4bf223edadab73eca32790e9ab1d9e4d978d8d112ffad",
         intel: "fd0f8e3decd56add350784468710296a8eca24ab061bdf8f371393e450042a36"

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
