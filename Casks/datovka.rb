cask "datovka" do
  version "4.15.2"
  sha256 "a144eff2c0dfc939a5b5243d0efa81297ceecbbb5e8969c9bca51b6ca0ae0b94"

  # secure.nic.cz/files/datove_schranky/ was verified as official when first introduced to the cask
  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-macos10.12.dmg"
  appcast "https://www.datovka.cz/cs/pages/instalace.html"
  name "Datovka"
  homepage "https://www.datovka.cz/"

  app "datovka.app"
end
