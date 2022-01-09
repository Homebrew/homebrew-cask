cask "lunasea" do
  version "6.0.0,60000006"
  sha256 "10ad53618b83ca1b94ef0190805911f54c73865fd477695191991c41223454d2"

  url "https://github.com/CometTools/LunaSea/releases/download/#{version.csv.first}%2B#{version.csv.second}/LunaSea-macOS-#{version.csv.second}.zip"
  name "LunaSea"
  desc "Open source self-hosted remote control for media software"
  homepage "https://github.com/CometTools/LunaSea/"

  livecheck do
    url :url
    strategy :git do |tags|
      tags.map do |tag|
        match = tag.match(/^v?(\d+(?:\.\d+)+)[+-](\d+(?:\.\d+)*)$/i)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  app "LunaSea.app"

  zap trash: [
    "~/Library/Application Scripts/app.lunasea.lunasea",
    "~/Library/Containers/app.lunasea.lunasea",
  ]
end
