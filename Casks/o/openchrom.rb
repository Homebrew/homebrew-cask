cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.10"
  sha256 arm:   "551223805320c61bf11c211e1e0f12c7ddd36114cecd3eb18211ad539a9ee1ec",
         intel: "7a7d3a93c2a2910b55cbcb1a6d677713f6e316d9fb487b392801156c9e6118eb"

  url "https://products.lablicate.com/openchrom/#{version}/OpenChrom_#{version}_#{arch}.dmg",
      verified: "products.lablicate.com/openchrom/"
  name "OpenChrom"
  desc "Data analysis for analytical chemistry"
  homepage "https://www.openchrom.net/"

  livecheck do
    url "https://marketplace.lablicate.com/api/downloads/hash-size"
    regex(/OpenChrom[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
    strategy :json do |json, regex|
      json.dig("data", "items")&.filter_map do |item|
        item["name"]&.[](regex, 1)
      end
    end
  end

  no_autobump! because: :bumped_by_upstream

  depends_on macos: ">= :big_sur"

  app "OpenChrom.app"

  zap trash: [
    "~/.openchrom",
    "~/OpenChrom",
  ]
end
