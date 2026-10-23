cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.38"
  sha256 arm:   "a9030803540172ab7517b9d0be307e25f48001f7b70b8f82bfad9a9b91f10260",
         intel: "fdc14a570ab13f2d41320d3a774e11d4bf385dc300f7853d63b79d8ad8ae5598"

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
