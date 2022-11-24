cask "prosys-opc-ua-browser" do
  arch arm: "aarch64", intel: "x64"

  version "4.3.0,82"
  sha256 arm:   "7856e1be727523d6a5c7b1915bd4858fd7537cc0afa2f596d122bc7f982e7e8a",
         intel: "2e58c7615169b6c8d9527b88bde79b6d742c2e5a2cb4a2b3d2b8c5acb731977f"

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
