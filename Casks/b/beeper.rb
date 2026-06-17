cask "beeper" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "4.2.936"
  sha256 arm:   "b08df9cb9fce335a97cc60cfd02b78e30d8acf8f827e566d9c6f4b1a3d6cc58d",
         intel: "ce2209c62ae0d26f79d2abdb5ac3cc89f8a358d937f908f163a20962d4c67d53"

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
  depends_on macos: :monterey

  app "Beeper Desktop.app"

  zap trash: [
    "~/Library/Application Support/BeeperTexts",
    "~/Library/Caches/com.automattic.beeper.desktop",
    "~/Library/Caches/com.automattic.beeper.desktop.ShipIt",
    "~/Library/Preferences/com.automattic.beeper.desktop.plist",
    "~/Library/Saved Application State/com.automattic.beeper.desktop.savedState",
  ]
end
