cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.16"
  sha256 arm:   "4d8ab099b383206aeb6903ea2ef97e48b168d7c628d64379e579ea5f6f2c248a",
         intel: "0e06ced1ec95c539ede615b7c90d59ad010eaa0fe22bcd838bdd2cdc3e1725f3"

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
