cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.12"
  sha256 arm:   "6c45f9bce6d760439e4b8f1b427880d60cc3307b6f42b9986b7b99e824cb9f0a",
         intel: "83f36742af00e22b614e9dda8c5b91cdfa51082299a88a9d4859c7d44916f667"

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
