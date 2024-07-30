cask "openbci" do
  version "5.2.2,2023-08-25_23-54-44"
  sha256 "6fb21f9d76464bbfe0af55ee014be4775e4e640f111a07b9e71c1518c01f35fa"

  url "https://github.com/OpenBCI/OpenBCI_GUI/releases/download/v#{version.csv.first}/openbcigui_v#{version.csv.first}_#{version.csv.second}_macosx.dmg",
      verified: "github.com/OpenBCI/OpenBCI_GUI/"
  name "OpenBCI"
  desc "Connect to OpenBCI hardware, visualise and stream physiological data"
  homepage "https://openbci.com/"

  livecheck do
    url :url
    regex(/^openbcigui[._-]v?(\d+(?:\.\d+)+)[._-](.+)[._-]macosx\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true

  app "OpenBCI_GUI.app"

  zap trash: "~/Documents/OpenBCI_GUI"

  caveats do
    requires_rosetta
  end
end
