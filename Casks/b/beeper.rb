cask "beeper" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "4.1.1"
  sha256 arm:   "473cb6e4174be6edfea6f1badfe5c3a0a43438eec978bf02fdd8a85c9cb3a385",
         intel: "fa051d692e4b1b395e84341a4446949e1a707a2087f9c057c23680f2cbc961ec"

  url "https://beeper-desktop.download.beeper.com/builds/Beeper-#{version}#{arch}-mac.zip"
  name "Beeper"
  desc "Universal chat app powered by Matrix"
  homepage "https://www.beeper.com/"

  livecheck do
    url "https://api.beeper.com/desktop/update-feed.json?bundleID=com.automattic.beeper.desktop&platform=macos&arch=#{livecheck_arch}&channel=stable"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Beeper Desktop.app"

  zap trash: [
    "~/Library/Application Support/BeeperTexts",
    "~/Library/Caches/com.automattic.beeper.desktop",
    "~/Library/Caches/com.automattic.beeper.desktop.ShipIt",
    "~/Library/Preferences/com.automattic.beeper.desktop.plist",
    "~/Library/Saved Application State/com.automattic.beeper.desktop.savedState",
  ]
end
