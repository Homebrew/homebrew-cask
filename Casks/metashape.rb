cask "metashape" do
  version "1.7.3"
  sha256 "4d8c36a003835c2c6c7e3f259ae5f4ec3b58214f96ea7b0f6d0816dc9bd848db"

  url "http://download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg"
  name "Agisoft Metashape Standard Edition"
  desc "Process digital images and generate 3D spatial data"
  homepage "https://www.agisoft.com/"

  livecheck do
    url "https://www.agisoft.com/downloads/installer/"
    regex(/Metashape\s*(\d+(?:\.\d+)+)/i)
  end

  app "Metashape.app"
end
