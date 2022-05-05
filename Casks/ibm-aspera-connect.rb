cask "ibm-aspera-connect" do
  version "4.1.3.93"
  sha256 "502fe4644ed79d214a9acc33922e55de88c50ddd37dd4072515a1a51c287d617"

  url "https://d3gcli72yxqn2z.cloudfront.net/connect_latest/v4/bin/ibm-aspera-connect_#{version}_macOS_x86_64.dmg",
      verified: "d3gcli72yxqn2z.cloudfront.net/"
  name "IBM Aspera Connect"
  desc "Facilitate uploads and downloads with an Aspera transfer server"
  homepage "https://www.ibm.com/aspera/connect/"

  livecheck do
    url "https://d3gcli72yxqn2z.cloudfront.net/connect_latest/v4/connectversions.min.js"
    regex(/ibm-aspera-connect[._-]v?(\d+(?:\.\d+)+)_macOS_x86_64\.dmg/i)
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
