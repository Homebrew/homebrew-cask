cask "pinegrow" do
  version "5.971.0"
  sha256 "f774068d7593adf93fc3c0153ad23b054366af7948a0eb1ca64efbd59c87164b"

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast "https://pinegrow.com/"
  name "Pinegrow"
  homepage "https://pinegrow.com/"

  app "Pinegrow.app"
end
