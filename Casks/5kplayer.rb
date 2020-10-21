cask "5kplayer" do
  version "6.4.0"
  sha256 "323d0ea6a41c4f19a29c31167cdd68eaaabcab3b1cbaaeba075d7422805a58c9"

  url "https://www.5kplayer.com/download/5kplayer.dmg"
  appcast "https://www.5kplayer.com/upgrade/mac/updatecast.xml"
  name "5KPlayer"
  homepage "https://www.5kplayer.com/"

  app "5KPlayer.app"

  uninstall quit: "com.digiarty.5kplayer"

  zap trash: [
    "~/Library/Caches/com.digiarty.5kplayer",
    "~/Library/Preferences/com.digiarty.5kplayer.plist",
    "~/Library/Saved Application State/com.digiarty.5kplayer.savedState",
  ]
end
