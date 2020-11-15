cask "busycontacts" do
  version "1.4.11,141103"
  sha256 "e2d23240e43f1645a4cb309cc72ca944d9294d5e9407e907dadb637cf01dc05e"

  url "https://www.busymac.com/download/BusyContacts.zip"
  appcast "https://www.busymac.com/busycontacts/news.plist"
  name "BusyContacts"
  desc "Contact manager focusing on efficiency"
  homepage "https://www.busymac.com/busycontacts/index.html"

  auto_updates true

  pkg "BusyContacts Installer.pkg"

  uninstall pkgutil: "com.busymac.busycontacts.pkg",
            signal:  ["KILL", "com.busymac.busycontacts"]
end
