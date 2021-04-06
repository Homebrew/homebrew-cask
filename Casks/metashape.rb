cask "metashape" do
  version "1.7.0"
  sha256 "dbe0731d2b6ed92ea93a2dd0d45b1cb005667967ca0aed9719bfd16c55a76ca8"

  url "http://download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg"
  appcast "https://www.agisoft.com/downloads/installer/"
  name "Agisoft Metashape Standard Edition"
  homepage "https://www.agisoft.com/"

  app "Metashape.app"
end
