cask "aria2d" do
  version "1.3.6"
  sha256 "1840ce5b25571925cfec67635e3e48ce38306b856b509861f2ecfdfd0470cd7b"

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
