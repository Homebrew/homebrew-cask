cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.33"
  sha256 arm:   "5561065ca68124b05ff1e59b9c2ddded0f5d101729712df5b03b427f3d122608",
         intel: "06300236caca8d4cae6d98a81a8fc6ca8cff3ce45b36d8eb1d825721a9d9bf03"

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
