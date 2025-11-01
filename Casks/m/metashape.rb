cask "metashape" do
  version "2.2.2"
  sha256 "ccccb9b8bfb7791d4a4acd8d9ee052ec0d6c04c0552a1437240b90bbfb3dbc52"

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
