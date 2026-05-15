cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.16"
  sha256 arm:   "4766802b7384bd38d29c1a7e2a9f6909eabc12e93955ae4ee0de86b59fc8b494",
         intel: "ddd66c9c0e287bfbc60605a4d3dd2089c84c60da38ccc86d8c8fdb9627e4c8db"

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
