cask "5kplayer" do
  version "6.8.0,5000"
  sha256 :no_check

  url "https://www.5kplayer.com/download/5kplayer.dmg"
  name "5KPlayer"
  homepage "https://www.5kplayer.com/"

  livecheck do
    url "https://www.5kplayer.com/upgrade/mac/updatecast.xml"
    strategy :sparkle
  end

  app "5KPlayer.app"

  uninstall quit: "com.digiarty.5kplayer"

  zap trash: [
    "~/Library/Caches/com.digiarty.5kplayer",
    "~/Library/Preferences/com.digiarty.5kplayer.plist",
    "~/Library/Saved Application State/com.digiarty.5kplayer.savedState",
  ]
end
