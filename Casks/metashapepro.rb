cask "metashapepro" do
  version "1.7.0"
  sha256 "19ad58089df92792cbb0a469175784e0f5f58ae142323066b02528090b358e72"

  url "http://download.agisoft.com/metashape-pro_#{version.dots_to_underscores}.dmg"
  name "Agisoft Metashape Professional Edition"
  homepage "https://www.agisoft.com/"

  app "MetashapePro.app"
end
