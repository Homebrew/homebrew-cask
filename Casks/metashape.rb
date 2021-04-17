cask "metashape" do
  version "1.7.2"
  sha256 "245a2268d1e4ca072685982acaaf22f06b878c0408d2799e4b8045812229d729"

  url "http://download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg"
  name "Agisoft Metashape Standard Edition"
  desc "Process digital images and generate 3D spatial data"
  homepage "https://www.agisoft.com/"

  livecheck do
    url "https://www.agisoft.com/downloads/installer/"
    strategy :page_match
    regex(/Metashape\s*(\d+(?:\.\d+)*)/i)
  end

  app "Metashape.app"
end
