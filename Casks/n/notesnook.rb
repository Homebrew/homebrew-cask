cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.6.10"
  sha256 arm:   "acf43a70463acd4dbd605a9244cc6db63fd4cef4af4688c519fd0f23cb24dbef",
         intel: "6061cc38a4c98947763ec15e35e4d5ed5725399b2920ff728f7f68c0075f3dfa"

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
