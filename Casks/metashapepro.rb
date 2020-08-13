cask "metashapepro" do
  version "1.6.3"
  sha256 "735e47721d21f1a94b9bb7dbf70f2dce745b000ddf276aee46596543bf33bb16"

  url "http://download.agisoft.com/metashape-pro_#{version.dots_to_underscores}.dmg"
  name "Agisoft Metashape Professional Edition"
  homepage "https://www.agisoft.com/"

  app "MetashapePro.app"
end
