cask "ip-in-menu-bar" do
  version "4.6"
  sha256 :no_check

  url "https://www.monkeybreadsoftware.de/Software/IPinmenubar.dmg"
  name "IP in menu bar"
  desc "Shows current IP address in menu bar"
  homepage "https://www.monkeybreadsoftware.de/Software/IPinmenubar.shtml"

  livecheck do
    url :homepage
    regex(/IP\s+in\s+menubar\s+(\d+(?:\.\d+)+)/i)
  end

  app "IP in menu bar.app"
end
