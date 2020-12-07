cask "elmedia-player" do
  version "7.17,2353"
  sha256 "077ca82d2e2d83c6c63142b38e6952e548eaab77b5a9daa6de2ca162c7fef174"

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
