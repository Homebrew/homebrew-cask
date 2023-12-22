cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.6.13"
  sha256 arm:   "e19690ae8756c14e74fa00df9eb0e6bae8600c6ba9aca75deec0e1c3daa68ac2",
         intel: "bc80d367e939c73808ac93b7463d009bd96d671273cfb95be6b63f9c5f89c236"

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
