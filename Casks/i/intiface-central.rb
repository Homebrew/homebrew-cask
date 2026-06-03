cask "intiface-central" do
  version "3.1.0,42"
  sha256 "c57e37d3000531889a87ca2027244ccbae070fd2e1096e6bd25532197c42f454"

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

  depends_on macos: :big_sur

  app "Intiface Central.app"

  zap trash: [
    "~/Library/Application Scripts/com.nonpolynomial.intifacecentral",
    "~/Library/Containers/com.nonpolynomial.intifacecentral",
  ]
end
