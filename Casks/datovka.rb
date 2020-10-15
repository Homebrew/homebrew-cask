cask "datovka" do
  version "4.15.5"
  sha256 "f6d48c5911272195d91cffbed4519aed25325073c38453252d236026ce5e1eaf"

  # secure.nic.cz/files/datove_schranky/ was verified as official when first introduced to the cask
  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-macos10.12.dmg"
  appcast "https://www.datovka.cz/cs/pages/instalace.html"
  name "Datovka"
  homepage "https://www.datovka.cz/"

  app "datovka.app"
end
