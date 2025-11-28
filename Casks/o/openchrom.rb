cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.34"
  sha256 arm:   "a7d642a7d9fdefb1102eff683d6239e8c89fc0b71703c8bfda72861e8bb05a5a",
         intel: "55ddeb01e5eed1805fcdb2a1f2122cda3580a0c5069d7a19cb9d48f9520f0e04"

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
