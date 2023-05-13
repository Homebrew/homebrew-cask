cask "metashapepro" do
  version "2.0.1"
  sha256 "b8cc9080f681342ff904355efadbada695f8ca16289bb9b1548ed0685148ccbf"

  url "http://download.agisoft.com/metashape-pro_#{version.dots_to_underscores}.dmg"
  name "Agisoft Metashape Professional Edition"
  desc "Process digital images and generate 3D spatial data"
  homepage "https://www.agisoft.com/"

  livecheck do
    url "https://www.agisoft.com/downloads/installer/"
    regex(/Metashape\s*(\d+(?:\.\d+)+)/i)
  end

  app "MetashapePro.app"

  zap trash: [
    "~/Library/Preferences/com.agisoft.Metashape Pro.plist",
    "~/Library/Saved Application State/com.agisoft.metashape.professional.savedState",
  ]
end
