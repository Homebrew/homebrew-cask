cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.27"
  sha256 arm:   "e46e521325b89b3470afcba5eeabed64222ee52df01b9c4ebc6f01de3c18bf15",
         intel: "7f6efa56ccae3ef6c44d7cba3784aecacb144258dbb3a71a002e173698535557"

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
