cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.0"
  sha256 arm:   "0770847a1db825b573aad113d355ed4263d6cd05a38b77efc889fe39d762ed25",
         intel: "b49cf295d0a7d81bd37c96c56f85f1f869c241a393cd017e67b4138844b217b1"

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
