cask "prosys-opc-ua-browser" do
  arch arm: "aarch64", intel: "x64"

  version "5.1.0,237"
  sha256 arm:   "7dd9dc5238ee2ae5346587217a0f76ef0a8d8ac323298b3ad75e55cfcf020b39",
         intel: "780003ae367709d732a919fe890703bc7a1f4d8e45aadc4d408518d7b44376fd"

  url "https://downloads.prosysopc.com/opcua/apps/UaBrowser/dist/#{version.csv.first}-#{version.csv.second}/prosys-opc-ua-browser-mac-#{arch}-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Prosys OPC UA Browser"
  desc "Browse and visualise data from OPC UA servers"
  homepage "https://prosysopc.com/products/opc-ua-browser/"

  livecheck do
    url "https://downloads.prosysopc.com/opc-ua-browser-downloads.php"
    regex(/href=.*?prosys[._-]opc[._-]ua[._-]browser[._-]mac[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)[._-](\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  installer script: {
    executable: "Prosys OPC UA Browser Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall delete: "/Applications/Prosys OPC UA Browser.app"

  zap trash: [
    "~/.prosysopc",
    "~/Desktop/Prosys OPC UA Browser",
  ]
end
