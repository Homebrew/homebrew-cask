cask "intiface-central" do
  version "3.0.3,39"
  sha256 "c3605043d8a1bbb30a2ce5873e07b5d0d34395f2ad09cc1b82d29a2932ff357e"

  url "https://github.com/intiface/intiface-central/releases/download/v#{version.csv.first}#{"%2B#{version.csv.second}" if version.csv.second}/intiface-central-v#{version.csv.first}-macos-universal.dmg"
  name "Intiface Central"
  desc "Frontend application for the Buttplug sex toy control library"
  homepage "https://github.com/intiface/intiface-central"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)\+(\d+)$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
    end
  end

  depends_on macos: ">= :big_sur"

  app "Intiface Central.app"

  zap trash: [
    "~/Library/Application Scripts/com.nonpolynomial.intifacecentral",
    "~/Library/Containers/com.nonpolynomial.intifacecentral",
  ]
end
