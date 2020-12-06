cask "metashape" do
  version "1.7.0"
  sha256 "2dd889951cb4c3526d06ce4b6ed48ca94dbd33a9867ce239092d218cc6bc7eb6"

  url "http://download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg"
  appcast "https://www.agisoft.com/downloads/installer/"
  name "Agisoft Metashape Standard Edition"
  homepage "https://www.agisoft.com/"

  app "Metashape.app"
end
