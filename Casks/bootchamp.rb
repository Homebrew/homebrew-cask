cask "bootchamp" do
  version "1.7"
  sha256 :no_check

  url "https://kainjow.com/downloads/BootChamp.zip"
  appcast "https://kainjow.com/updates/bootchamp.xml"
  name "BootChamp"
  homepage "https://www.kainjow.com/"

  app "BootChamp.app"
end
