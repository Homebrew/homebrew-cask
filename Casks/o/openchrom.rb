cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.24"
  sha256 arm:   "ccd098a8efbdf10412ecaf7cf649b977208e79604122bab148ebac8caabb5e1b",
         intel: "54461a4ca8a3a4549a0a559ca388c185fb2d02020fa60d0a25c41ec5270ac538"

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
