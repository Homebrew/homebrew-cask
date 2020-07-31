cask "beersmith" do
  version "3.1.7"
  sha256 "d8b2b460ac1aea8278b248294dfafb1a753e03e68d1fd680e82cd77719bd243e"

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
