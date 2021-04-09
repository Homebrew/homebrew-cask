cask "altgr-weur" do
  version :latest
  sha256 :no_check

  url "https://github.com/tjsousa/altgr-weur-mac/archive/master.zip",
      verified: "github.com/tjsousa/altgr-weur-mac/"
  name "AltGr WEur keyboard layout"
  desc "This layout makes all accented characters used in Danish, Dutch, Finnish, French, German, Italian, Norwegian, Portugese, Spanish and Swedish available through one AltGr keystroke"
  homepage "https://altgr-weur.eu/"

  artifact "altgr-weur-mac-master/altgr-weur.icns", target: "/Library/Keyboard Layouts/altgr-weur.icns"
  artifact "altgr-weur-mac-master/altgr-weur.keylayout", target: "/Library/Keyboard Layouts/altgr-weur.keylayout"
end
