cask "elmedia-player" do
  version "8.10,3265"
  sha256 :no_check

  url "https://cdn.electronic.us/products/elmedia/mac/download/elmediaplayer.dmg"
  name "Elmedia Player"
  desc "Video and audio player"
  homepage "https://www.electronic.us/products/elmedia/"

  livecheck do
    url "https://cdn.electronic.us/products/elmedia/mac/update/settings.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Elmedia Player.app"

  zap trash: [
    "~/Library/Caches/com.Eltima.ElmediaPlayer",
    "~/Library/Preferences/com.Eltima.ElmediaPlayer.LSSharedFileList.plist",
    "~/Library/Preferences/com.Eltima.ElmediaPlayer.plist",
    "~/Library/Preferences/com.eltima.activator.xml",
  ]
end
