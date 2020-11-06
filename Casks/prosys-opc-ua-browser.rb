cask "prosys-opc-ua-browser" do
  version "4.0.4-247"
  sha256 "9d9e7156cc06dab6bc8fcc20d29dc8a357946d40ec6616a21a7d5d7cf5b0c601"

  url "https://www.prosysopc.com/opcua/apps/UaBrowser/dist/#{version}/prosys-opc-ua-browser-macos-#{version}.dmg"
  appcast "https://downloads.prosysopc.com/opc-ua-browser-downloads.php"
  name "Prosys OPC UA Browser"
  homepage "https://www.prosysopc.com/products/opc-ua-client/"

  installer script: {
    executable: "Prosys OPC UA Browser Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall delete: "/Applications/Prosys OPC UA Browser.app"
end
