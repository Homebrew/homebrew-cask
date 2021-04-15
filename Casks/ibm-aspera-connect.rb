cask "ibm-aspera-connect" do
  version "3.11.2.63"
  sha256 "909d82d674352a2aa89938e9f01baba14f9d034ca1a1c97ccc5302b63449dd66"

  url "https://d3gcli72yxqn2z.cloudfront.net/connect_latest/v4/bin/IBMAsperaConnectInstallerOneClick-#{version}.dmg",
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
  }

  zap trash: [
    "~/Library/Application Scripts/com.aspera.connect.SafariExtension",
    "~/Library/Application Scripts/com.aspera.drive.SendToExtension",
    "~/Library/Containers/com.aspera.connect.SafariExtension",
    "~/Library/Containers/com.aspera.drive.SendToExtension",
    "~/Library/Group Containers/group.com.aspera.connect",
    "~/Library/Logs/Aspera_Connect",
    "~/Library/Preferences/com.aspera.connect.plist",
    "~/Library/Saved Application State/com.aspera.connect.savedState",
  ]
end
