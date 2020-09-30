cask "elmedia-player" do
  version "7.14,2257"
  sha256 "dd6bc4e83ec026a6362de8a3fed72367b186b9cb35a8b04266dbcfa0ec189466"

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
