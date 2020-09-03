cask "pinegrow" do
  version "5.973"
  sha256 "18dc7c55b32327adea54c2eee9133da8636774fccb97bdce1bcab7e6cd3637f0"

  url "https://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast "https://pinegrow.com/"
  name "Pinegrow"
  homepage "https://pinegrow.com/"

  app "Pinegrow.app"
end
