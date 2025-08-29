cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.23"
  sha256 arm:   "81ba51a2175e09c1cfe10d926c4c95bc3647dd163e7543aa124a65e979e0dcce",
         intel: "0008ba5f826c82895f800c1e9aa7a3e45d11a7d113d677bd4ba0909c6d1e53b8"

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
