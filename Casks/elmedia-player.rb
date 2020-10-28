cask "elmedia-player" do
  version "7.15,2281"
  sha256 "272c710241c1e89b9a9e8fdfd2fc21528d4db46aabb2879c623f69d6d59e860b"

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
