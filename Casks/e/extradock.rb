cask "extradock" do
  version "4.4.13"
  sha256 "80b6d9939f3e4bf3803896e7b84b2c98dfa15a4f6c974d8fb199adbb1ed506bc"

  url "https://github.com/AppitStudio/extra-dock-updates/releases/download/v#{version}/extraDock.dmg"
  name "ExtraDock"
  desc "Add fully customizable extra docks"
  homepage "https://extradock.app/"

  livecheck do
    url "https://raw.githubusercontent.com/AppitStudio/extra-dock-updates/refs/heads/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "ExtraDock.app"

  uninstall quit: "dignicy.extraDock"

  zap trash: [
    "~/Library/Application Support/ExtraDock",
    "~/Library/Caches/dignicy.extraDock",
    "~/Library/HTTPStorages/dignicy.extraDock",
    "~/Library/Preferences/dignicy.extraDock.lifecycle.plist",
    "~/Library/Preferences/dignicy.extraDock.plist",
    "~/Library/Saved Application State/dignicy.extraDock.savedState",
  ]
end
