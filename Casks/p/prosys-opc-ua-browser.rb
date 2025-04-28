cask "prosys-opc-ua-browser" do
  arch arm: "aarch64", intel: "x64"

  version "5.1.2,267"
  sha256 arm:   "25b7fe38f6cd9166f23750dedc47bf9c60f09a4ba07aa0029c5605a147578ae5",
         intel: "061ad023c23ac6fbd4a0565135860f72845f98d9896d71fc4348c894c4ab29aa"

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
