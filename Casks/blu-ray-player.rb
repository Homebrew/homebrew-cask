cask "blu-ray-player" do
  version "3.3.19,191021"
  sha256 "728a1fec8d6a5ed1159e6bba8f81cc5c24f66a0c16ccccce8440fb3e886d5b9c"

  url "https://www.macblurayplayer.com/user/download/Mac_Bluray_Player.dmg"
  appcast "https://cdn.macblurayplayer.com/mac-bluray-player-#{version.major}/appcast/Appcast.xml"
  name "Macgo Mac Blu-ray Player"
  desc "Player for Blu-ray content"
  homepage "https://www.macblurayplayer.com/"

  app "Blu-ray Player.app"
end
