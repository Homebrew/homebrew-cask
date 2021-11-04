cask "ankama" do
  version "3.5.4.12908"
  sha256 :no_check

  url "https://launcher.cdn.ankama.com/installers/production/Ankama%20Launcher-Setup.dmg"
  name "Ankama Launcher"
  desc "Portal to download Ankama's PC games"
  homepage "https://www.ankama.com/en/launcher"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :yosemite"

  app "Ankama Launcher.app"

  uninstall quit: "Ankama Launcher"

  zap trash: [
    "~/Library/Application Support/Ankama Launcher",
    "~/Library/Preferences/com.ankama.zaap.plist",
    "~/Library/Saved Application State/com.ankama.zaap.savedState",
  ]
end
