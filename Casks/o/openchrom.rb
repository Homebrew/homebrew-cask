cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.20"
  sha256 arm:   "a459cea1e3cead52e1057d0fb42072b1b5d84c47cdd455411bb1861fbdd84cc8",
         intel: "ac272746cd63ebdd69fbf831ed6cc8582fb7dbf74fc540beb56f3c826f43f9f0"

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
