cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.5.4"
  sha256 arm:   "64d2bdbddb6088c2cfbc122e574dd78ddfb3c70e461d788c20132bf0f372dd24",
         intel: "ead8364cfd7c2ae0101674fc9c23c579be5d824b574fdc1b04664a08c98ad524"

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
