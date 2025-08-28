cask "beeper" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "4.1.145"
  sha256 arm:   "080026f6cf53bb3b0b8d85e7f14ad4517dbb076f33b98048372c4b8dbd4ad2f3",
         intel: "81462f5bc0f708b9e5457f246a8ed62401a994f873518d30795d4006c6a8c0a5"

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
