cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.26"
  sha256 arm:   "580561abb3f59aba1d5f36e007e538ab40508d265bf1b5ff7fd1aef969e87536",
         intel: "37d35c96620a520d930797c7153a242e7be3576bcf856d8fa5ba2dec73cb40cc"

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
