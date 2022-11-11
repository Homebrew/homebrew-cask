cask "aria2d" do
  version "1.3.7,417"
  sha256 "44d5e1f25cdfdfd7e1b1f87dc10b6d651ea5cf6406ef4b451fc7e0f357d2ec8b"

  url "https://raw.githubusercontent.com/xjbeta/AppUpdaterAppcasts/master/Aria2D/Aria2D%20#{version.csv.first}.dmg",
      verified: "githubusercontent.com/xjbeta/"
  name "Aria2D"
  desc "Aria2 GUI"
  homepage "https://github.com/xjbeta/Aria2D"

  livecheck do
    url "https://raw.githubusercontent.com/xjbeta/AppUpdaterAppcasts/master/Aria2D/Appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Aria2D.app"

  zap trash: [
    "~/Library/Application Support/com.xjbeta.Aria2D",
    "~/Library/Application Support/Aria2D",
    "~/Library/Preferences/com.xjbeta.Aria2D.plist",
    "~/Library/Saved Application State/com.xjbeta.Aria2D.savedState",
  ]
end
