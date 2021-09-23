cask "metashapepro" do
  version "1.7.4"
  sha256 "85611a689d393d69dc9004c33992734e65b808f64eff38948443178aee3ae171"

  url "http://download.agisoft.com/metashape-pro_#{version.dots_to_underscores}.dmg"
  name "Agisoft Metashape Professional Edition"
  desc "Process digital images and generate 3D spatial data"
  homepage "https://www.agisoft.com/"

  livecheck do
    url "https://www.agisoft.com/downloads/installer/"
    regex(/Metashape\s*(\d+(?:\.\d+)+)/i)
  end

  app "MetashapePro.app"
end
