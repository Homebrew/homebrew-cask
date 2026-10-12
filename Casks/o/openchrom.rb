cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.36"
  sha256 arm:   "23339a6ecdb4aecf692c61fdfc3eadc9a2d119cb8e4816fa5b49d8b2904c9885",
         intel: "0e69a2d0e30c04bcac5a4955b396d3182a77786b31330022397f637ae31d33cf"

  url "https://products.lablicate.com/openchrom/#{version}/OpenChrom_#{version}_#{arch}.dmg"
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

  depends_on :macos

  app "OpenChrom.app"

  uninstall quit: "net.openchrom.rcp.compilation.community.product.id"

  zap trash: [
    "~/.openchrom",
    "~/Library/Preferences/net.openchrom.rcp.compilation.community.product.id.plist",
    "~/OpenChrom",
  ]
end
