cask "ibm-aspera-connect" do
  version "3.11.1.58"
  sha256 "3d6ab32e4fef3a4f371ae5d40e3eb46472b7e13f3739ab96db618e0b341e57a3"

  url "https://d3gcli72yxqn2z.cloudfront.net/connect_#{version.dots_to_underscores}_ga/v4/bin/IBMAsperaConnectInstallerOneClick-#{version}.dmg",
      verified: "d3gcli72yxqn2z.cloudfront.net/"
  name "IBM Aspera Connect"
  desc "Facilitate uploads and downloads with an Aspera transfer server"
  homepage "https://www.ibm.com/aspera/connect/"

  livecheck do
    url "https://d3gcli72yxqn2z.cloudfront.net/connect_latest/v4/connectversions.min.js"
    strategy :page_match
    regex(/(\d+(?:\.\d+)*)\.dmg/)
  end

  installer manual: "IBM Aspera Connect Installer.app"

  uninstall script: {
    executable: "~/Library/Application Support/Aspera/Aspera Connect/uninstall_connect.sh",
    args:       ["-f"],
  },
            delete: "~/Library/Logs/Aspera_Connect"
end
