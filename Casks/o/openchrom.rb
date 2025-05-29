cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.12"
  sha256 arm:   "2dfc412f04275fcc05138ac91c30c4dd7fa9d27ede0fc6d9bcf40d7fb68e2033",
         intel: "d765b7b3b16e09f2abbba8aebabb3931799b9412da51a6a03bad50b989a9bc79"

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

  app "OpenChrom.app"

  zap trash: [
    "~/.openchrom",
    "~/OpenChrom",
  ]
end
