cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.10"
  sha256 arm:   "914b19abedb77de912d68ab6ec6378dff7207cbaa47080a4b47e49f54e296300",
         intel: "610a957dd5c5beb5259ca1e4c5834eb5b15d13b31d91e75139418a5e8caff371"

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
