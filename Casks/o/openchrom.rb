cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.14"
  sha256 arm:   "44a4229042ae3194c53069c7e06bcf14541bcd3dc072e0cb31afdd4a712c4c4d",
         intel: "0a99fc39f2acbe357d962edef21358775c675045beef5cfc4ae95de4852dbb7a"

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
