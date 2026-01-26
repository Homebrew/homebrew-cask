cask "prosys-opc-ua-browser" do
  arch arm: "aarch64", intel: "x64"

  version "5.2.0,15"
  sha256 arm:   "48a6b2529902332e2eabbec5bf957d3365354b4be67d4a191b665664bb09b19a",
         intel: "19cd99abfbca7dc60200e354266e72588c2f57b98648ed93ad2ce172ccfe87cd"

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
