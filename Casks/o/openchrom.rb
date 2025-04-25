cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.7"
  sha256 arm:   "daae97b92c351b99935f440ed1ca3aef5d0826844fab817f35f2cbecdb839a10",
         intel: "f56008467f8833bb5af6c8a1c747823668e59d383c88c75a66224c7899ab335c"

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
