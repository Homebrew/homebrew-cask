cask "beersmith" do
  version "3.1.8"
  sha256 "0f2f23bcccd7e22fc0bc0b4ab63cf31a5dbe854c9135839919db1f6fce61edc0"

  # beersmith3-1.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://beersmith3-1.s3.amazonaws.com/BeerSmith#{version.dots_to_underscores}.dmg"
  appcast "https://beersmith.com/download-beersmith/",
          must_contain: version.dots_to_underscores
  name "BeerSmith"
  homepage "https://beersmith.com/"

  app "BeerSmith#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/BeerSmith.*",
    "~/Library/Caches/BeerSmith-LLC.BeerSmith.*",
    "~/Library/Preferences/BeerSmith-LLC.BeerSmith.*.plist",
    "~/Library/Saved Application State/BeerSmith-LLC.BeerSmith.*.savedStat",
  ]
end
