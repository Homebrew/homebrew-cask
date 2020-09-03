cask "busycontacts" do
  version "1.4.9,141001"
  sha256 "7ef807695437c318cbcd6c73eba6b7376b70d2f2b5481c8dc087aa4308ae0c83"

  url "https://www.busymac.com/download/BusyContacts.zip"
  appcast "https://www.busymac.com/busycontacts/news.plist"
  name "BusyContacts"
  homepage "https://www.busymac.com/busycontacts/index.html"

  auto_updates true

  pkg "BusyContacts Installer.pkg"

  uninstall pkgutil: "com.busymac.busycontacts.pkg",
            signal:  ["KILL", "com.busymac.busycontacts"]
end
