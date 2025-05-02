cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.8"
  sha256 arm:   "e21f5092395eee6838943151e1aaeeb121b3522501a6e70b49d74d5074f17d4e",
         intel: "d30ecd7cc3257cd010b68020546a21f322c7af9fd4a3e84f744adda4f24bfe9d"

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
