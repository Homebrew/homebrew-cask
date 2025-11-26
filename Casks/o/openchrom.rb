cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.33"
  sha256 arm:   "768cd9d5f54eca131af02f296efb2f5ac65812ccb4bdcc242711140571e80021",
         intel: "9224b3a61d21dc246fcf48875ab661a3c09d3ef64153e39a7c04e22034dede95"

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
