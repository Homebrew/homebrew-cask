cask "metashape" do
  version "2.0.0"
  sha256 "eb599c2945ea0ee5b278843b3435c09d2dae8ddca2b1face28678bedfd3390e9"

  url "http://download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg"
  name "Agisoft Metashape Standard Edition"
  desc "Process digital images and generate 3D spatial data"
  homepage "https://www.agisoft.com/"

  livecheck do
    url "https://www.agisoft.com/downloads/installer/"
    regex(/Metashape\s*(\d+(?:\.\d+)+)/i)
  end

  app "Metashape.app"

  zap trash: [
    "~/Library/Preferences/com.agisoft.Metashape.plist",
    "~/Library/Saved Application State/com.agisoft.metashape.standard.savedState",
  ]
end
