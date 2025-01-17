cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.0"
  sha256 arm:   "85c7b22cf2b61bc5e7083b7bab4a61cf66c9508f3715505db93fc955d28263e1",
         intel: "fd874f9286f512bbbbfea4637ff114255677ad973ad9f89b5573468ece7c3df9"

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
