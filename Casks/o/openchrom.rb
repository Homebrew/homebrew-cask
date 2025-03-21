cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.3"
  sha256 arm:   "2b16e2ea11acd690061cba75572dcfb618bc6a1afc9294a7130a6699b377033f",
         intel: "15274a8e364c4094d5403358f0cf871945719ccfb4463213f97754c1a8041e92"

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
