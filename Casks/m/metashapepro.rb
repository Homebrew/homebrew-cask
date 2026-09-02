cask "metashapepro" do
  version "2.3.2"
  sha256 "8b6829b9c49e4b34658d04c41913047b1cd9d3e16abcf70c92295c492dd4a2c0"

  url "https://download.agisoft.com/metashape-pro_#{version.dots_to_underscores}.dmg"
  name "Agisoft Metashape Professional Edition"
  desc "Process digital images and generate 3D spatial data"
  homepage "https://www.agisoft.com/"

  livecheck do
    url "https://www.agisoft.com/downloads/installer/"
    regex(/Metashape\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :big_sur

  app "MetashapePro.app"

  uninstall quit: "com.agisoft.metashape.professional"

  zap trash: [
    "~/Library/Preferences/com.agisoft.Metashape Pro.plist",
    "~/Library/Saved Application State/com.agisoft.metashape.professional.savedState",
  ]
end
