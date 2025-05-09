cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.9"
  sha256 arm:   "6827d8461b6c329360e7be814d17a9ae559c4887f685385ca654ef862f34141d",
         intel: "f0611022f4400645232a5bdc74415a6cb2fcf8ce5673d34a74080dbe345b8f03"

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
