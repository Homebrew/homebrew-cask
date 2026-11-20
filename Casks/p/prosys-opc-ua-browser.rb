cask "prosys-opc-ua-browser" do
  arch arm: "aarch64", intel: "x64"

  version "2026.2.4,47"
  sha256 arm:   "35d2cd32d2386350d4479395b257f0b406bc0fc500bbf72f590935fc8818abcd",
         intel: "56ffff46b052c32104c6794c78b1c6d114865879f2bef368e987165a31a79d46"

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
