cask "beersmith" do
  version "3.2.8"
  sha256 "47538ccdeb793a0164c41741b596f9c178fd2b9046a5b42c507e272a5e8c3cd1"

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

  depends_on macos: ">= :mojave"

  app "BeerSmith#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/BeerSmith.*",
    "~/Library/Caches/BeerSmith-LLC.BeerSmith.*",
    "~/Library/Preferences/BeerSmith-LLC.BeerSmith.*.plist",
    "~/Library/Saved Application State/BeerSmith-LLC.BeerSmith.*.savedStat",
  ]

  caveats do
    requires_rosetta
  end
end
