cask "metashapepro" do
  version "2.3.1"
  sha256 "85b7e43dc87c1295605cc5a1cb55aa9c4260429431856289535c3c573d6fd03b"

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
