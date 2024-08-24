cask "metashapepro" do
  version "2.1.2"
  sha256 "0039aaa86b063a97c45e2755f9f25ec48796b551555164ef0d0d1ab417757bb6"

  url "https://s3-eu-west-1.amazonaws.com/download.agisoft.com/metashape-pro_#{version.dots_to_underscores}.dmg",
      verified: "s3-eu-west-1.amazonaws.com/download.agisoft.com/"
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
