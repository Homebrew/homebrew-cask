cask "metashape" do
  version "1.7.4"
  sha256 "53463e9c3a25e952597b3285c6802e7aab5567a863e8e9ad0e2fe4be24156256"

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
