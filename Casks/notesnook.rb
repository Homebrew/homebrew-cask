cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.2.2"
  sha256 arm:   "524cd711ffe5997746153d32d2aca3dfeb59c5048d8b1cbdceaf54443a85a890",
         intel: "3e2b52c5bf1da16ccf795cd851b84a23c57760d8e98b5567f5979cd9712982b5"

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_mac_#{arch}.dmg",
      verified: "github.com/streetwriters/notesnook/"
  name "Notesnook"
  desc "Privacy-focused note taking app"
  homepage "https://notesnook.com/"

  livecheck do
    url "https://notesnook.com/releases/darwin/latest-mac.yml"
    strategy :electron_builder
  end

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
