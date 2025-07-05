cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.17"
  sha256 arm:   "0e3ed5f0275ab16328ef7d0b68c5243224a66493ada913fe73de79a2789bae31",
         intel: "7b2a8f837a540501f1c7fbe7005a41109525b77052be8bbdf18c8041e9e96aaa"

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
