cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.31"
  sha256 arm:   "ff7a7b8b41e89be012e5497ec11bcd1ff20ed7cd5788f829ae6f6d4fb6dce8fc",
         intel: "506ae155f69a22ff0c8db319181002ef8664f725f0c8f5bb838b6a6776d42bd4"

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
