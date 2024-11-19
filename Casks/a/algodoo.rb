cask "algodoo" do
  version "2.1.3"
  sha256 "9f3419d0da9cca0f0f5abc0b8a228197221c92fcbc35138ed2bb0b9251820a66"

  url "https://www.algodoo.com/download/Algodoo_#{version.dots_to_underscores}-MacOS.dmg"
  name "Algodoo"
  desc "Draw and interact with physical systems"
  homepage "https://www.algodoo.com/"

  livecheck do
    url "https://www.algodoo.com/download/"
    regex(%r{href=.*?/Algodoo_(\d+(?:_\d+)*)-MacOS\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex)&.map { |match| match[0].tr("_", ".") }
    end
  end

  app "Algodoo.app"

  zap trash: [
    "~/Library/Application Support/Algodoo",
    "~/Library/Preferences/se.algoryx.Algodoo.plist",
    "~/Library/Saved Application State/se.algoryx.algodoo-regular.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
