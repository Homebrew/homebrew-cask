cask "ibm-aspera-connect" do
  version "3.10.1.181943"
  sha256 "aff234db6ce414044a7932926137a8f451dd6bcc026c1b5f067283d43e1d18c7"

  # d3gcli72yxqn2z.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3gcli72yxqn2z.cloudfront.net/connect_#{version.dots_to_underscores}_ga/v4/bin/IBMAsperaConnectInstallerOneClick-#{version}.dmg"
  appcast "https://www.ibm.com/aspera/connect/",
          must_contain: version.dots_to_underscores
  name "IBM Aspera Connect"
  desc "Facilitate uploads and downloads with an Aspera transfer server"
  homepage "https://www.ibm.com/aspera/connect/"

  installer manual: "IBM Aspera Connect Installer.app"

  uninstall script: {
    executable: "~/Library/Application Support/Aspera/Aspera Connect/uninstall_connect.sh",
    args:       ["-f"],
  },
            delete: "~/Library/Logs/Aspera_Connect"
end
