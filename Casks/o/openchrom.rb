cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.4"
  sha256 arm:   "062996f16ff8a3eb3a950cb9b54b9128bb9b869d49ad1b663dbd6de307a0fbcf",
         intel: "9fccbf735931a78c093b9d86e629a1a25fefaf9ebcafcd33ef764a5b01a0bff5"

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
