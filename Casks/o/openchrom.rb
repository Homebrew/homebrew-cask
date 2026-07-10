cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.23"
  sha256 arm:   "d627dbdccf6df4d5e0680a84cc1010f3e733735ea1cf9ff81eaa07385043abd9",
         intel: "477c02dbf1365fc246203032a80000541c7eab2fbb836ec4fff9ad7f8801518b"

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

  depends_on macos: :big_sur

  app "OpenChrom.app"

  zap trash: [
    "~/.openchrom",
    "~/OpenChrom",
  ]
end
