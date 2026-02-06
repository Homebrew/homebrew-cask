cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.4"
  sha256 arm:   "f6fef840b660d2faf533af450dce16a8f27ed88a6db1aedf09c80e8a3033983d",
         intel: "ab35ce6f89834cb24a89c0c029d1e90ed8bcb5295e1e6a2f99c1eb8a8ce5f61b"

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

  depends_on macos: ">= :big_sur"

  app "OpenChrom.app"

  zap trash: [
    "~/.openchrom",
    "~/OpenChrom",
  ]
end
