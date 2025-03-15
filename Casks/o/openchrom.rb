cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.2"
  sha256 arm:   "e73970ef9f32d587ff2e57958ed6ce22086a722a384944d67135350381fc8ae2",
         intel: "b45eb70107014aed5036e76c41f1cbb62dddef8f68d58e663179dbf874468edc"

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
