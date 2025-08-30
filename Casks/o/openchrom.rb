cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.23"
  sha256 arm:   "dbf9817948e3b978ddc559dd58bed1ab524a151410d40195157bb622ad910ace",
         intel: "d81e79cde3bf3ec254b4de4647b0d30d08ae1debd96aa0a7c7b9552521cecf7d"

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

  app "OpenChrom.app"

  zap trash: [
    "~/.openchrom",
    "~/OpenChrom",
  ]
end
