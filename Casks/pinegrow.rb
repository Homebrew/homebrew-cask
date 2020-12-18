cask "pinegrow" do
  version "5.99"
  sha256 "397c11293b1e9dffad52cb8f236be27a935fb7c9b8526db9d8b9ad77439d7958"

  url "https://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast "https://pinegrow.com/"
  name "Pinegrow"
  homepage "https://pinegrow.com/"

  app "Pinegrow.app"
end
