cask "beersmith" do
  version "3.2.7"
  sha256 "8df3be5c77d57938936e81803dcdbd76e30d71c8b2c90f0da79cbf3d90254946"

  url "https://beersmith3-2.s3.amazonaws.com/BeerSmith#{version.dots_to_underscores}.dmg",
      verified: "beersmith3-2.s3.amazonaws.com/"
  name "BeerSmith"
  desc "Beer brewing software"
  homepage "https://beersmith.com/"

  livecheck do
    url "https://beersmith.com/download-beersmith/"
    regex(/href=.*?BeerSmith[._-]?v?(\d+(?:[._]\d+)*)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  app "BeerSmith#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/BeerSmith.*",
    "~/Library/Caches/BeerSmith-LLC.BeerSmith.*",
    "~/Library/Preferences/BeerSmith-LLC.BeerSmith.*.plist",
    "~/Library/Saved Application State/BeerSmith-LLC.BeerSmith.*.savedStat",
  ]
end
