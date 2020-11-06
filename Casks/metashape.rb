cask "metashape" do
  version "1.6.5"
  sha256 "ee52edc7c771498c6589247065bcfaee38735aae86517d1484e854b73d753672"

  url "http://download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg"
  appcast "https://www.agisoft.com/downloads/installer/"
  name "Agisoft Metashape Standard Edition"
  homepage "https://www.agisoft.com/"

  app "Metashape.app"
end
