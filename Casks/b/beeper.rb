cask "beeper" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "4.2.605"
  sha256 arm:   "c2e90f6101b8472b68af57c71e248b111f2e73a89d785e89bfb6ba843b27edfb",
         intel: "c62379e07369c88c57ee21e8c59a5ec407cf1fdb4a0153eb2c25f7f6258c7c9c"

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
  depends_on macos: ">= :monterey"

  app "Beeper Desktop.app"

  zap trash: [
    "~/Library/Application Support/BeeperTexts",
    "~/Library/Caches/com.automattic.beeper.desktop",
    "~/Library/Caches/com.automattic.beeper.desktop.ShipIt",
    "~/Library/Preferences/com.automattic.beeper.desktop.plist",
    "~/Library/Saved Application State/com.automattic.beeper.desktop.savedState",
  ]
end
