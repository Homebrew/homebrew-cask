cask "rode-connect" do
  version "1.3.24"
  sha256 :no_check

  url "https://update.rode.com/connect/RODE_Connect_MACOS.zip"
  name "Rode Connect"
  desc "RØDE Connect is a simple and powerful software solution for podcasting"
  homepage "https://rode.com/en-us/software/rodeconnect"

  pkg "RØDE Connect.pkg"

  uninstall pkgutil: "com.rodeconnect.installer"

  zap trash: [
    "~/Library/Cache/com.rode.rodeconnect",
    "~/Library/HTTPStorages/com.rode.rodeconnect",
    "~/Library/Preferences/com.rode.rodeconnect.plist",
  ]
end
