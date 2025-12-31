cask "metashape" do
  version "2.3.0"
  sha256 "4521170e8683323c4e56f75dd36ceda1458e73f0d79a7e40b99869d864b510d3"

  url "https://download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg"
  name "Agisoft Metashape Standard Edition"
  desc "Process digital images and generate 3D spatial data"
  homepage "https://www.agisoft.com/"

  livecheck do
    url "https://www.agisoft.com/downloads/installer/"
    regex(/Metashape\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  app "Metashape.app"

  zap trash: [
    "~/Library/Preferences/com.agisoft.Metashape.plist",
    "~/Library/Saved Application State/com.agisoft.metashape.standard.savedState",
  ]
end
