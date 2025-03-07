cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.1"
  sha256 arm:   "15561492175732f127cdf0001b892e4bd112fe026f577b6bf4d4b82ef0f1750a",
         intel: "f2b11f4eeb025f489e90a64005fad30faebcaa682dad605b00f8a3613fd48552"

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

  app "OpenChrom.app"

  zap trash: [
    "~/.openchrom",
    "~/OpenChrom",
  ]
end
