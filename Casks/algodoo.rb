cask "algodoo" do
  version "2.1.3"
  sha256 "9f3419d0da9cca0f0f5abc0b8a228197221c92fcbc35138ed2bb0b9251820a66"

  url "http://www.algodoo.com/download/Algodoo_#{version.dots_to_underscores}-MacOS.dmg"
  appcast "http://www.algodoo.com/download/",
          must_contain: version.dots_to_underscores
  name "Algodoo"
  homepage "https://www.algodoo.com/"

  app "Algodoo.app"
end
