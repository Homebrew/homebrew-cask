cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.1"
  sha256 arm:   "0b8cafe4bbcbbabba640ac5cccf7b85ba3f9b285dbe850404ab6681f2971cf35",
         intel: "64e9cd4f6b61a6aeb77da727f23e974c3ed588d935030369b6e955aab09c2256"

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
