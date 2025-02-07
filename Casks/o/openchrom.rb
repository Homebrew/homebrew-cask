cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.0"
  sha256 arm:   "a20a43855b515543cf95351ce5e26aa3990c13068bfcaf131a3c6c81f571ec1a",
         intel: "d6814b7cbb050d8a1d913ac85e2b5989cc88af189a9b5996455d2776771f9619"

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
