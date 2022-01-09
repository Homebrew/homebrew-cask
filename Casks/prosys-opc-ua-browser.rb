cask "prosys-opc-ua-browser" do
  version "4.1.0-354"
  sha256 "e289747b31d2603d579e0495cd559c60a1c558f054461bbfb8fa3aa373a0261a"

  url "https://www.prosysopc.com/opcua/apps/UaBrowser/dist/#{version}/prosys-opc-ua-browser-macos-#{version}.dmg"
  name "Prosys OPC UA Browser"
  homepage "https://www.prosysopc.com/products/opc-ua-client/"

  livecheck do
    url "https://downloads.prosysopc.com/opc-ua-browser-downloads.php"
    strategy :page_match
    regex(%r{href=.*?/prosys-opc-ua-browser-macos-(\d+(?:\.\d+)*-\d+)\.dmg}i)
  end

  installer script: {
    executable: "Prosys OPC UA Browser Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall delete: "/Applications/Prosys OPC UA Browser.app"
end
