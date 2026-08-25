cask "metashape" do
  version "2.3.2"
  sha256 "8e3c1cea20cd405661ae2e44adac5a41624084c471bbfacf801a9b6d79fe6b6d"

  url "https://download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg"
  name "Agisoft Metashape Standard Edition"
  desc "Process digital images and generate 3D spatial data"
  homepage "https://www.agisoft.com/"

  livecheck do
    url "https://www.agisoft.com/downloads/installer/"
    regex(/Metashape\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :big_sur

  app "Metashape.app"

  uninstall quit: "com.agisoft.metashape.standard"

  zap trash: [
    "~/Library/Preferences/com.agisoft.Metashape.plist",
    "~/Library/Saved Application State/com.agisoft.metashape.standard.savedState",
  ]
end
