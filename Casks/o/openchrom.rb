cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.15"
  sha256 arm:   "76dd8eaa2948855a5abadd08763106778ed1b9a779cc078e3530fe197383cb94",
         intel: "42a52d631bcc28d4f0ce752defe6951cf59ed6c9bc07b8531e3dac41aa2fc033"

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
