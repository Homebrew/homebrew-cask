cask "intiface-central" do
  version "3.0.4,40"
  sha256 "d770e20a0194abef13b744854ac30b8251ee6e336f40af45ac498146741e450c"

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
