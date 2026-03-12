cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.10"
  sha256 arm:   "9437fe784969ea46369d40e41646bc676cce046b6a8133c6f5a18db16a671b2b",
         intel: "743f54100352f902e355493551b8bffe655d15a169e3acb86aa26322ba8db6cd"

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
