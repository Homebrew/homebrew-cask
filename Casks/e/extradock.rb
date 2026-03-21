cask "extradock" do
  version "4.1.9"
  sha256 "e2abc5a689b08c7e04fdedd873c21ca4d18d4de1d5dc00597c4d892bbad9c394"

  url "https://github.com/AppitStudio/extra-dock-updates/releases/download/v#{version}/extraDock.dmg",
      verified: "github.com/AppitStudio/"
  name "ExtraDock"
  desc "Add fully customizable extra docks"
  homepage "https://extradock.app/"

  livecheck do
    url "https://raw.githubusercontent.com/AppitStudio/extra-dock-updates/refs/heads/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "ExtraDock.app"

  zap trash: [
    "~/Library/Application Support/ExtraDock",
    "~/Library/Caches/dignicy.extraDock",
    "~/Library/HTTPStorages/dignicy.extraDock",
    "~/Library/Preferences/dignicy.extraDock.plist",
    "~/Library/Saved Application State/dignicy.extraDock.savedState",
  ]
end
