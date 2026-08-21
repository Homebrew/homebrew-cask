cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.29"
  sha256 arm:   "dc41ff0dd70034365a874aaefb8325e4ccfc905d759a90020a7266d5f57c48fd",
         intel: "8011a49b1880ea3903bdc61a51d8fb53303fb56ec013cbd6872567809e5394c2"

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
