cask "pinegrow" do
  version "5.972"
  sha256 "acef11695cedd16b53bf74a06d696631329e73f9bc7a439d70547fb28a7750a1"

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast "https://pinegrow.com/"
  name "Pinegrow"
  homepage "https://pinegrow.com/"

  app "Pinegrow.app"
end
