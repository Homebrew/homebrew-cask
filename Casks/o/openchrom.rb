cask "openchrom" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.28"
  sha256 arm:   "89fa385d34bd6524acfe9fee4ecad80be16dcf9a323a352304b9db139392931b",
         intel: "fd06aa1a6cdd3e523c4e20eeefb73cb5ac297619c5f03ce4c280ba18065b7871"

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
