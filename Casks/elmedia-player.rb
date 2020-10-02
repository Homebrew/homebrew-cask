cask "elmedia-player" do
  version "7.14,2259"
  sha256 "4d250613cba167426fd68b4563ca47e30e677f7332ffeafc8cfe257a8c7102a5"

  url "https://cdn.eltima.com/download/elmediaplayer.dmg"
  appcast "https://cdn.eltima.com/download/elmediaplayer-update/elmediaplayer.xml"
  name "Elmedia Player"
  desc "Video and audio player"
  homepage "https://mac.eltima.com/media-player.html"

  app "Elmedia Player.app"

  zap trash: [
    "~/Library/Caches/com.Eltima.ElmediaPlayer",
    "~/Library/Preferences/com.Eltima.ElmediaPlayer.LSSharedFileList.plist",
    "~/Library/Preferences/com.Eltima.ElmediaPlayer.plist",
    "~/Library/Preferences/com.eltima.activator.xml",
  ]
end
