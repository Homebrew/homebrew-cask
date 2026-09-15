cask "extradock" do
  version "4.3.16"
  sha256 "4088a132ef002f88453b402f03c975e927f5363bac1cac410591bbd9506ce8a1"

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

  app "extraDock.app"

  uninstall quit: "dignicy.extraDock"

  zap trash: [
    "~/Library/Application Support/ExtraDock",
    "~/Library/Caches/dignicy.extraDock",
    "~/Library/HTTPStorages/dignicy.extraDock",
    "~/Library/Preferences/dignicy.extraDock.plist",
    "~/Library/Saved Application State/dignicy.extraDock.savedState",
  ]
end
