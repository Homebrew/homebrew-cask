cask "repetier-host" do
  version "1.2.0"
  sha256 "2bb03be18ccb9698dc8bfebf0202a0dec2fa86f29e68872103aa5bd310383d47"

  url "https://download1.repetier.com/files/host-mac/Repetier-Host-Mac_#{version.dots_to_underscores}.dmg"
  appcast "https://www.repetier.com/updates/rhm/rhm-appcast.xml"
  name "Repetier-Host"
  homepage "https://www.repetier.com/"

  app "Repetier-Host-Mac.app"
end
