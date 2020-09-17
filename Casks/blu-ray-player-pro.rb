cask "blu-ray-player-pro" do
  version "3.3.19_191021_2039"
  sha256 "e398690c5d4d536fb267f5323314c39b56a39e4f7308ff8602fb4430c4528869"

  url "https://cdn.macblurayplayer.com/mac-bluray-player-pro3/Blu-ray_Player_Pro_#{version}.dmg"
  appcast "https://cdn.macblurayplayer.com/mac-bluray-player-pro3/appcast/Appcast.xml"
  name "Macgo Mac Blu-ray Player Pro"
  desc "Blu-ray player software"
  homepage "https://www.macblurayplayer.com/"

  app "Blu-ray Player Pro.app"
end
