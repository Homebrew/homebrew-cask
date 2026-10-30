cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.39"
  sha256 arm:   "c50649d672ea27c11d27a43569a024dfcf0c26ad5caceb2e4b0857795c0148e0",
         intel: "3916ce634c9889bca5b92b7d87d0566ef5c74f212fd70d59c049f730f61d518d"

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
