cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.25"
  sha256 arm:   "b915b414e7f9f10b4ccdb269f5df5815b8dcdd6ec806a7df76d03b1e85b87147",
         intel: "3159f5a709ddab920d24aac02efb2a95aa86934e09f2647f6c94c120730ac891"

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
