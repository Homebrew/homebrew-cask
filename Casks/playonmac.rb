cask "playonmac" do
  version "4.4.1"
  sha256 "6d7ea936dd0cf97400a23605ac195e387074f2e49d3a0a7fb2780fa03ff90e62"

  url "https://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  appcast "https://repository.playonmac.com/PlayOnMac/"
  name "PlayOnMac"
  desc "Allows installation and use of software designed for Windows"
  homepage "https://www.playonmac.com/"

  app "PlayOnMac.app"
end
