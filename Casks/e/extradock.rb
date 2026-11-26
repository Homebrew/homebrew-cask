cask "extradock" do
  version "4.4.20"
  sha256 "9880b5170c5163d71f4567ccfc4559daeb97b977c6047c7e9ea9b586735b68be"

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
