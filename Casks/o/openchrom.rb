cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.21"
  sha256 arm:   "629b2fda6c5520be214673aa5561a3faafff25fe957412b6fe790ef86d999441",
         intel: "b332d76e7851a166533e13b7f27e706b597fb3229cf660e6f3e09422b04049c5"

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

  depends_on macos: :big_sur

  app "OpenChrom.app"

  zap trash: [
    "~/.openchrom",
    "~/OpenChrom",
  ]
end
