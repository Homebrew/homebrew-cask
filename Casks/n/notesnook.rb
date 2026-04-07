cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.13"
  sha256 arm:   "eac91166c6c2a68febd9f26ba7e6daa5e3910f58fcd08b7435116f5a1b3d8bdb",
         intel: "2a56b3842ea9dea37bffb590b032b393faed984075bbf52e6a571d630a39c4ac"

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
