cask "blu-ray-player" do
  version "3.3.20,201204"
  sha256 "259a6df28068842fa1e484bb8fb2add5cc214ad6ebc11442c99eba9ae788fb27"

  url "https://www.macblurayplayer.com/user/download/Mac_Bluray_Player.dmg"
  appcast "https://cdn.macblurayplayer.com/mac-bluray-player-#{version.major}/appcast/Appcast.xml"
  name "Macgo Mac Blu-ray Player"
  desc "Player for Blu-ray content"
  homepage "https://www.macblurayplayer.com/"

  app "Blu-ray Player.app"
end
