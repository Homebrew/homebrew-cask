cask "metashape" do
  version "1.6.4"
  sha256 "f72115a79ecf30b0950fe612187ffb3aeb0fdb20300fba41edab2e5431db0af9"

  url "http://download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg"
  appcast "https://www.agisoft.com/downloads/installer/"
  name "Agisoft Metashape Standard Edition"
  homepage "https://www.agisoft.com/"

  app "Metashape.app"
end
