cask "pinegrow" do
  version "5.98"
  sha256 "bef63e9b9927cff74523e7d7cd743e2e2d51a07d4bb6639f3fe7baffaf065532"

  url "https://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast "https://pinegrow.com/"
  name "Pinegrow"
  homepage "https://pinegrow.com/"

  app "Pinegrow.app"
end
