cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.21"
  sha256 arm:   "241b22d22e00705f47ac339e80623a3f295c34f516bbd6f2c9e91e1e326c51a5",
         intel: "3b0182e87d17c3d5ecc5f15766d6680da56fd8639ba3efc7d4c670c4d15e7300"

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
