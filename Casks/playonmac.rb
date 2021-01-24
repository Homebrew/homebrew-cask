cask "playonmac" do
  version "4.4.2"
  sha256 "5c7300ca7115335a732cd4c02d07ed80aea1d5b11126677bfbce96a408ff48fb"

  url "https://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  appcast "https://repository.playonmac.com/PlayOnMac/"
  name "PlayOnMac"
  desc "Allows installation and use of software designed for Windows"
  homepage "https://www.playonmac.com/"

  app "PlayOnMac.app"
end
