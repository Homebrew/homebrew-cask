cask "prosys-opc-ua-browser" do
  version "4.0.6-268"
  sha256 "ebcbd868c2ff4d14607dcb7d9db4fd26cbcedc368ac8b8ee43fff6c13a00fe0e"

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
