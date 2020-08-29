cask "busycontacts" do
  version "1.4.9,140906"
  sha256 "ccaa15c5d66092be889a808bf342aa4b93adec03fa6e5beb581117a7e8335d59"

  url "https://www.busymac.com/download/BusyContacts.zip"
  appcast "https://www.busymac.com/busycontacts/news.plist"
  name "BusyContacts"
  homepage "https://www.busymac.com/busycontacts/index.html"

  auto_updates true

  pkg "BusyContacts Installer.pkg"

  uninstall pkgutil: "com.busymac.busycontacts.pkg",
            signal:  ["KILL", "com.busymac.busycontacts"]
end
