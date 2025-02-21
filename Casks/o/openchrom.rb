cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.0"
  sha256 arm:   "8ea1290fa683a0edfaf1d9598729bbfae70587bcbd8aeb4d3524b188720d18ee",
         intel: "f529049120763f244bf618d75c9018a79f531bb57dd26986c72e48da28f44be7"

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
