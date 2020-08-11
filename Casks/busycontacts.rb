cask "busycontacts" do
  version "1.4.9,141001"
  sha256 "aeb540e14271a7ec782f18fa77256a67d2ff96ebc8bf2444bc3e72f8d1d8e5ba"

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
