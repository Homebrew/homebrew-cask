cask "datovka" do
  version "4.15.3"
  sha256 "319e5fe34e2580c0ed1a1e10c9fbf42a51281dca606b5b0331f29b415cffacfe"

  # secure.nic.cz/files/datove_schranky/ was verified as official when first introduced to the cask
  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-macos10.12.dmg"
  appcast "https://www.datovka.cz/cs/pages/instalace.html"
  name "Datovka"
  homepage "https://www.datovka.cz/"

  app "datovka.app"
end
