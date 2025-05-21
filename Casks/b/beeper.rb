cask "beeper" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "4.0.710"
  sha256 arm:   "9c60f8ac82b16e5372ec6210ce840d2f138b16c5cd0d3e6d30b3e6e0408d9409",
         intel: "77a4cfc8f978c9665a350265ad81fdc7f90af45372597c38c1c1978f5a6ead93"

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
