cask "busycontacts" do
  version "1.4.11,141102"
  sha256 "94df3cc0d311e6efde1bd638e14f9ee2ca91ff224015fd75c324563758e09033"

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
