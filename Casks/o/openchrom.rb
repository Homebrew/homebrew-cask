cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.11"
  sha256 arm:   "99df88e8ad567b0b8ba5c938053487974e8f5fd800610212126bacd929351f5b",
         intel: "3742cd44c59922c78f358d0b78eb7ce5d4a3b25f4c7d29c8393cdd2de1092d9b"

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
