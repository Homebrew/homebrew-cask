cask "prosys-opc-ua-browser" do
  version "4.1.2,364"
  sha256 "47f7d6b07f822ac2735c8f04e90716e13ad641b7ba2cebe7f04d36dd2c119161"

  url "https://www.prosysopc.com/opcua/apps/UaBrowser/dist/#{version.csv.first}-#{version.csv.second}/prosys-opc-ua-browser-macos-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Prosys OPC UA Browser"
  desc "Browse and visualize data from OPC UA servers"
  homepage "https://www.prosysopc.com/products/opc-ua-browser/"

  livecheck do
    url "https://downloads.prosysopc.com/opc-ua-browser-downloads.php"
    strategy :page_match do |page|
      match = page.match(/href=.*?prosys-opc-ua-browser-macos[._-]v?(\d+(?:\.\d+)+)-(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  installer script: {
    executable: "Prosys OPC UA Browser Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall delete: "/Applications/Prosys OPC UA Browser.app"
end
