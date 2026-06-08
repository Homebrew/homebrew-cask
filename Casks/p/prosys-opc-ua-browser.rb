cask "prosys-opc-ua-browser" do
  arch arm: "aarch64", intel: "x64"

  version "2026.1.2,38"
  sha256 arm:   "1813beffa796e792e79f784a6518d57269dcc1ed45af8452e1411782bf949d2d",
         intel: "7eb3d6798f252ee908df1e3b6e36c7b8c2160154987fc09d08b26b841e628415"

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

  depends_on :macos

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
