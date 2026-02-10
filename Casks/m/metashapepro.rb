cask "metashapepro" do
  version "2.3.0"
  sha256 "9c3476dc8a0996fb594cb6be749bee2eb15d920b6ee421dab8484e81047e2acc"

  url "https://download.agisoft.com/metashape-pro_#{version.dots_to_underscores}.dmg"
  name "Agisoft Metashape Professional Edition"
  desc "Process digital images and generate 3D spatial data"
  homepage "https://www.agisoft.com/"

  livecheck do
    url "https://www.agisoft.com/downloads/installer/"
    regex(/Metashape\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  app "MetashapePro.app"

  zap trash: [
    "~/Library/Preferences/com.agisoft.Metashape Pro.plist",
    "~/Library/Saved Application State/com.agisoft.metashape.professional.savedState",
  ]
end
