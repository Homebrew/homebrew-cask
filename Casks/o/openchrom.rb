cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.6"
  sha256 arm:   "3f31b5da2d032fc0c1684440b413e09c562ca51b5fc5e764e7b8ed9bea5adfcb",
         intel: "d1f8788a7f38638b3fd2d9ad66b962c6ad0cee02d0b3491d3f4163e9fd53b3cb"

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
