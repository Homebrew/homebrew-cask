cask "ankama" do
  version "3.12.1"
  sha256 :no_check

  url "https://launcher.cdn.ankama.com/installers/production/Ankama%20Launcher-Setup.dmg"
  name "Ankama Launcher"
  desc "Video game launcher"
  homepage "https://www.ankama.com/en/launcher"

  livecheck do
    url "https://launcher.cdn.ankama.com/installers/production/latest-mac.yml"
    strategy :electron_builder
  end

  app "Ankama Launcher.app"

  uninstall quit: "Ankama Launcher"

  zap trash: [
    "~/Library/Application Support/Ankama Launcher",
    "~/Library/Preferences/com.ankama.zaap.plist",
    "~/Library/Saved Application State/com.ankama.zaap.savedState",
  ]
end
