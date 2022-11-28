cask "prosys-opc-ua-browser" do
  arch arm: "aarch64", intel: "x64"

  version "4.4.0,126"
  sha256 arm:   "d358c32b87d9576492fd4112a967db96921da6a5d84321b0110082d2d1e1c579",
         intel: "af512e83f87abe221a51ebdbb1835c2d1798585b1d6a2d4a133e4d1b635b608b"

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
