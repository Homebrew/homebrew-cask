cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.40"
  sha256 arm:   "5786610cc24aa86ea0649e3d11a6015cca676176f6f054575b7702bc2c8dfbbf",
         intel: "e73a22d76cd4915e95c41df2050c4ca506f49ade2c77ebb7463ed54b1149de27"

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
