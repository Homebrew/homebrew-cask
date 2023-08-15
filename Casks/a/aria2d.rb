cask "aria2d" do
  version "1.3.8"
  sha256 "f541b792ed813fa38ec72a87f42e8283383c781d0c9deac421bbc1cdababbb65"

  url "https://raw.githubusercontent.com/xjbeta/AppUpdaterAppcasts/master/Aria2D/Aria2D%20#{version}.dmg",
      verified: "githubusercontent.com/xjbeta/"
  name "Aria2D"
  desc "Aria2 GUI"
  homepage "https://github.com/xjbeta/Aria2D"

  livecheck do
    url "https://raw.githubusercontent.com/xjbeta/AppUpdaterAppcasts/master/Aria2D/Appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sierra"

  app "Aria2D.app"

  zap trash: [
    "~/Library/Application Support/Aria2D",
    "~/Library/Application Support/com.xjbeta.Aria2D",
    "~/Library/Preferences/com.xjbeta.Aria2D.plist",
    "~/Library/Saved Application State/com.xjbeta.Aria2D.savedState",
  ]
end
