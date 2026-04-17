cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.13"
  sha256 arm:   "07e2d192ea0741d4808e4fc6d9946a0040deb6e4eea982b61547137690809620",
         intel: "1e0806a88c55df2049711a6f1b1a9ac49f8387655ae5f1b29667225cec79f85e"

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

  depends_on macos: ">= :big_sur"

  app "OpenChrom.app"

  zap trash: [
    "~/.openchrom",
    "~/OpenChrom",
  ]
end
