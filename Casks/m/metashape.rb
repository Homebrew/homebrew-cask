cask "metashape" do
  version "2.1.2"
  sha256 "bbc204e8bf03dca4863abc8f11309c1794c4c3ff8fa9f2848d726843baa485ca"

  url "https://s3-eu-west-1.amazonaws.com/download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg",
      verified: "s3-eu-west-1.amazonaws.com/download.agisoft.com/"
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
