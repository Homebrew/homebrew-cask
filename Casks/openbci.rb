cask "openbci" do
  version "5.0.9,2021-11-06_00-16-07"
  sha256 "216fc1d47ebb5b158d7bbe7f71caf78f754d4a41c8cc9b5914bd2b01afd0cfcc"

  url "https://github.com/OpenBCI/OpenBCI_GUI/releases/download/v#{version.csv.first}/openbcigui_v#{version.csv.first}_#{version.csv.second}_macosx.dmg",
      verified: "github.com/OpenBCI/OpenBCI_GUI/"
  name "OpenBCI"
  desc "Connect to OpenBCI hardware, visualize and stream physiological data"
  homepage "https://openbci.com/"

  livecheck do
    url "https://github.com/OpenBCI/OpenBCI_GUI/releases/latest"
    strategy :page_match do |page|
      match = page.match(/openbcigui[._-]v?(\d+(?:\.\d+)+)[._-](.+)[._-]macosx\.dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

  app "OpenBCI_GUI.app"

  zap trash: "~/Documents/OpenBCI_GUI"
end
