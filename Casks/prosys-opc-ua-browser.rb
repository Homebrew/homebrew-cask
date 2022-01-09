cask "prosys-opc-ua-browser" do
  version "4.1.0,354"
  sha256 "e289747b31d2603d579e0495cd559c60a1c558f054461bbfb8fa3aa373a0261a"

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
