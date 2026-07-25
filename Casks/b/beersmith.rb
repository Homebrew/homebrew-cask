cask "beersmith" do
  version "4.0.22"
  sha256 "97fe0d9eee2e8be6d677f340af8de36067b075f7981aaa85194df4050bea903f"

  url "https://beersmith#{version.major}.s3.amazonaws.com/BeerSmith_#{version}.dmg",
      verified: "beersmith#{version.major}.s3.amazonaws.com/"
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

  depends_on macos: :big_sur

  app "BeerSmith#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/BeerSmith.*",
    "~/Library/Caches/BeerSmith-LLC.BeerSmith.*",
    "~/Library/Preferences/BeerSmith-LLC.BeerSmith.*.plist",
    "~/Library/Saved Application State/BeerSmith-LLC.BeerSmith.*.savedStat",
  ]
end
