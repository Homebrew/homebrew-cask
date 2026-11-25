cask "intiface-central" do
  version "3.2.2,46"
  sha256 "b2dc163b436cca4832f48f558ddaf7d6a5c63235da32ffc40ac57fafb54136ae"

  build_suffix = "%2B#{version.csv.second}" if version.csv.second
  url "https://github.com/intiface/intiface-central/releases/download/v#{version.csv.first}#{build_suffix}/intiface-central-v#{version.csv.first}-macos-universal.dmg"
  name "Intiface Central"
  desc "Frontend application for the Buttplug sex toy control library"
  homepage "https://github.com/intiface/intiface-central"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)\+(\d+)$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match.values_at(1, 2).compact_blank.join(",")
    end
  end

  depends_on macos: :monterey

  app "Intiface Central.app"

  zap trash: [
    "~/Library/Application Scripts/com.nonpolynomial.intifacecentral",
    "~/Library/Containers/com.nonpolynomial.intifacecentral",
  ]
end
