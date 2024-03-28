cask "elmedia-player" do
  version "8.18"
  sha256 :no_check

  url "https://cdn.electronic.us/products/elmedia/mac/download/elmediaplayer.dmg"
  name "Elmedia Player"
  desc "Video and audio player"
  homepage "https://www.electronic.us/products/elmedia/"

  livecheck do
    url "https://cdn.electronic.us/products/elmedia/mac/update/settings.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Elmedia Player.app"

  zap trash: [
    "~/Library/Caches/com.Eltima.ElmediaPlayer",
    "~/Library/Preferences/com.eltima.activator.xml",
    "~/Library/Preferences/com.Eltima.ElmediaPlayer.LSSharedFileList.plist",
    "~/Library/Preferences/com.Eltima.ElmediaPlayer.plist",
  ]
end
