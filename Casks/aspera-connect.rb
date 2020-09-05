cask "aspera-connect" do
  version "3.10.0.180973"
  sha256 "12fbb7468590136b408f108ae209522f78e2ea03dab61572bb5002337c3a9dcc"

  url "https://download.asperasoft.com/download/sw/connect/#{version.major_minor_patch}/IBMAsperaConnectInstaller-#{version}.dmg"
  appcast "https://downloads.asperasoft.com/connect2/",
          must_contain: version.dots_to_underscores
  name "Aspera Connect"
  homepage "https://asperasoft.com/software/transfer-clients/connect-web-browser-plug-in/"

  pkg "IBMAsperaConnectInstaller.pkg"

  uninstall pkgutil: [
    "com.aspera.AsperaWeb",
    "com.aspera.connect",
    "com.aspera.crypt",
    "com.aspera.launcher",
  ],
            script:  {
              executable: "/Library/Application Support/Aspera/Aspera Connect/uninstall_connect.sh",
              args:       ["-f"],
              sudo:       true,
            }
end
