cask "blu-ray-player" do
  version "3.3.20,201204"
  sha256 :no_check

  url "https://www.macblurayplayer.com/user/download/Mac_Bluray_Player.dmg"
  name "Macgo Mac Blu-ray Player"
  desc "Player for Blu-ray content"
  homepage "https://www.macblurayplayer.com/"

  livecheck do
    url "https://cdn.macblurayplayer.com/mac-bluray-player-#{version.major}/appcast/Appcast.xml"
    strategy :sparkle
  end

  app "Blu-ray Player.app"
end
