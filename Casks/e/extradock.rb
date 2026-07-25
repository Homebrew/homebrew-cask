cask "extradock" do
  version "4.3.2"
  sha256 "f5bda7dfdbdb44b1563d98d5d853e20144061c40c5ff6b6a627f3d2317d8cfea"

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
  depends_on macos: :monterey

  app "ExtraDock.app"

  zap trash: [
    "~/Library/Application Support/ExtraDock",
    "~/Library/Caches/dignicy.extraDock",
    "~/Library/HTTPStorages/dignicy.extraDock",
    "~/Library/Preferences/dignicy.extraDock.plist",
    "~/Library/Saved Application State/dignicy.extraDock.savedState",
  ]
end
