cask "prosys-opc-ua-browser" do
  arch arm: "aarch64", intel: "x64"

  version "4.2.0,33"
  sha256 arm:   "92972a00ba8eb2738322947d26a4f2a1f5e4e6db3ab0f46bfdcf8fedb4ae22a9",
         intel: "fa4ce0dd4ed9222a9e2a24ec68934969b4f6a8bc852ef165dcd50ceb2cccc2c4"

  url "https://www.prosysopc.com/opcua/apps/UaBrowser/dist/#{version.csv.first}-#{version.csv.second}/prosys-opc-ua-browser-mac-#{arch}-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Prosys OPC UA Browser"
  desc "Browse and visualize data from OPC UA servers"
  homepage "https://www.prosysopc.com/products/opc-ua-browser/"

  livecheck do
    url "https://downloads.prosysopc.com/opc-ua-browser-downloads.php"
    strategy :page_match do |page|
      match = page.match(/href=.*?prosys-opc-ua-browser-mac-#{arch}[._-]v?(\d+(?:\.\d+)+)-(\d+)\.dmg/i)
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
