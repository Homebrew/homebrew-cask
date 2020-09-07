cask "datovka" do
  version "4.15.2"
  sha256 "6ee6ee28e3b3f936b34f17b5c7848f5907fe516381984472ac53be1a69615316"

  # secure.nic.cz/files/datove_schranky/ was verified as official when first introduced to the cask
  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-macos10.12.dmg"
  appcast "https://www.datovka.cz/cs/pages/instalace.html"
  name "Datovka"
  homepage "https://www.datovka.cz/"

  app "datovka.app"
end
