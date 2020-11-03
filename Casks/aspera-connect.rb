cask "aspera-connect" do
  version "3.10.1.181943"
  sha256 "aff234db6ce414044a7932926137a8f451dd6bcc026c1b5f067283d43e1d18c7"

  # d3gcli72yxqn2z.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3gcli72yxqn2z.cloudfront.net/connect_#{version.dots_to_underscores}_ga/v4/bin/IBMAsperaConnectInstallerOneClick-#{version}.dmg"
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
