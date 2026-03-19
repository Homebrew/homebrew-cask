cask "beersmith" do
  version "4.0.15"
  sha256 "b9abe5cb1207edfce58836201842839efda650240b6b90e6c269d4ace6f8c55f"

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

  depends_on macos: ">= :big_sur"

  app "BeerSmith#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/BeerSmith.*",
    "~/Library/Caches/BeerSmith-LLC.BeerSmith.*",
    "~/Library/Preferences/BeerSmith-LLC.BeerSmith.*.plist",
    "~/Library/Saved Application State/BeerSmith-LLC.BeerSmith.*.savedStat",
  ]
end
