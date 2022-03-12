cask "lunasea" do
  version "10.0.0"
  sha256 "ab35402ec47d1f106beafd6e0da41506d9ea788046e35b8bd36f54468c5c0265"

  url "https://github.com/CometTools/LunaSea/releases/download/v#{version.csv.first}/LunaSea-macOS.zip"
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
