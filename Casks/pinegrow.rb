cask "pinegrow" do
  version "5.981"
  sha256 "71a76d22935307d1588e1905c6c6586ddce4d18231eaad2c1d96f10b977d579c"

  url "https://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast "https://pinegrow.com/"
  name "Pinegrow"
  homepage "https://pinegrow.com/"

  app "Pinegrow.app"
end
