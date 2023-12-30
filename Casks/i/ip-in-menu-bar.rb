cask "ip-in-menu-bar" do
  version "4.7.1"
  sha256 :no_check

  url "https://www.monkeybreadsoftware.de/Software/IPinmenubar.dmg"
  name "IP in menu bar"
  desc "Shows current IP address in menu bar"
  homepage "https://www.monkeybreadsoftware.de/Software/IPinmenubar.shtml"

  livecheck do
    url :homepage
    regex(/IP\s+in\s+menubar\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  app "IP in menu bar.app"

  zap trash: [
    "~/Library/Caches/de.monkeybreadsoftware.freeware.ipinmenubar",
    "~/Library/HTTPStorages/de.monkeybreadsoftware.freeware.ipinmenubar",
    "~/Library/Preferences/de.monkeybreadsoftware.freeware.ipinmenubar.plist",
  ]
end
