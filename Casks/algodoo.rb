cask "algodoo" do
  version "2.1.3"
  sha256 "9f3419d0da9cca0f0f5abc0b8a228197221c92fcbc35138ed2bb0b9251820a66"

  url "http://www.algodoo.com/download/Algodoo_#{version.dots_to_underscores}-MacOS.dmg"
  name "Algodoo"
  desc "Draw and interact with physical systems"
  homepage "https://www.algodoo.com/"

  livecheck do
    url "http://www.algodoo.com/download/"
    strategy :page_match do |page|
      v = page[%r{href=.*?/Algodoo_(\d+(?:_\d+)*)-MacOS\.dmg}i, 1]
      v.tr("_", ".")
    end
  end

  app "Algodoo.app"
end
