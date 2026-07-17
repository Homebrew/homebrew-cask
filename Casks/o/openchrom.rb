cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.24"
  sha256 arm:   "a6679e577810d1032171e6c420b4d36487a7b50aabdf0f93248c49aedb0a1a8f",
         intel: "3a41f905c042cf8d784ce74541fb9ca3f72c88a7f34f21e7495504c2d172a98e"

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
