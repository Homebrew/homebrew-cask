cask "ibm-aspera-connect" do
  arch arm: "arm64", intel: "x86_64"

  version "4.2.13.820"
  sha256 arm:   "58b42f814c95168e149491d330acb286920fcc19c581e958168305b78c8aa478",
         intel: "7dd745e07145a39cfae516b797745541fb3774050e567f98adbe191651b10d1f"

  url "https://download4.boulder.ibm.com/sar/CMA/OSA/0csnb/0/ibm-aspera-connect_#{version}_macOS_#{arch}.pkg"
  name "IBM Aspera Connect"
  desc "Facilitate uploads and downloads with an Aspera transfer server"
  homepage "https://www.ibm.com/aspera/connect/"

  livecheck do
    url "https://d3gcli72yxqn2z.cloudfront.net/downloads/connect/latest/versions.js"
    regex(/ibm-aspera-connect[._-]v?(\d+(?:\.\d+)+)_macOS_x86_64\.pkg/i)
  end

  pkg "ibm-aspera-connect_#{version}_macOS_#{arch}.pkg"

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
