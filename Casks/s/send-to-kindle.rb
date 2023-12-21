cask "send-to-kindle" do
  version "1.1.1.255"
  sha256 :no_check

  url "https://sendtokindle.s3.amazonaws.com/SendToKindleForMac-installer.pkg",
      verified: "sendtokindle.s3.amazonaws.com/"
  name "Send to Kindle"
  desc "Tool for sending personal documents to Kindles from Macs"
  homepage "https://www.amazon.com/gp/sendtokindle/mac"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "SendToKindleForMac-installer.pkg"

  uninstall launchctl: "com.amazon.sendtokindle.launcher",
            quit:      "com.amazon.SendToKindle",
            pkgutil:   "com.amazon.SendToKindleMacInstaller.pkg"

  zap trash: [
    "~/Library/Application Support/Amazon/SendToKindle",
    "~/Library/Preferences/com.amazon.SendToKindle.plist",
    "~/Library/Logs/SendToKindleInstall.log",
  ]
end
