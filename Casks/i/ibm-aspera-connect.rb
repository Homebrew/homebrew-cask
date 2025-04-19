cask "ibm-aspera-connect" do
  version "4.2.14.855"
  sha256 "3b1d2fefe897e4e04b2ff68f26220e2e75c93cf566b8504048f72076b42da23d"

  url "https://d3gcli72yxqn2z.cloudfront.net/downloads/connect/latest/bin/ibm-aspera-connect_#{version}-HEAD_macOS_x86_64.pkg",
      verified: "d3gcli72yxqn2z.cloudfront.net/"
  name "IBM Aspera Connect"
  desc "Facilitate uploads and downloads with an Aspera transfer server"
  homepage "https://www.ibm.com/aspera/connect/"

  livecheck do
    url "https://d3gcli72yxqn2z.cloudfront.net/downloads/connect/latest/references.json"
    strategy :json do |json|
      json["entries"]&.map do |entry|
        next unless entry.dig("platform", "os")&.match?(/^mac(?:OS)?$/i)

        entry["version"]
      end
    end
  end

  pkg "ibm-aspera-connect_#{version}-HEAD_macOS_x86_64.pkg"

  uninstall pkgutil: [
    "com.ibm.software.aspera.connect",
    "com.ibm.software.aspera.crypt",
    "com.ibm.software.aspera.launcher",
  ]

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
