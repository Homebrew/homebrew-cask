cask "datovka" do
  version "4.15.4"
  sha256 "a56bc8b1b5d50c3560858793b7c9053ca97c10a52f9e0f2375322a680b965987"

  # secure.nic.cz/files/datove_schranky/ was verified as official when first introduced to the cask
  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-macos10.12.dmg"
  appcast "https://www.datovka.cz/cs/pages/instalace.html"
  name "Datovka"
  homepage "https://www.datovka.cz/"

  app "datovka.app"
end
