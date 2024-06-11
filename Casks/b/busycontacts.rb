cask "busycontacts" do
  version "2024.1.2"
  sha256 "54f1a92915549416da37e5ce6e7bad51dd78a54cf4f6439664f6873af8f36018"

  url "https://www.busymac.com/download/bct-#{version}.zip"
  name "BusyContacts"
  desc "Contact manager focusing on efficiency"
  homepage "https://www.busymac.com/busycontacts/index.html"

  livecheck do
    url "https://versioncheck.busymac.com/busycontacts/news.plist"
    strategy :xml do |xml|
      xml.elements["//dict/key[text()='current']"]&.next_element&.text&.strip
    end
  end

  auto_updates true

  pkg "BusyContacts Installer.pkg"

  uninstall quit:    "com.busymac.busycontacts",
            signal:  ["KILL", "com.busymac.busycontacts"],
            pkgutil: "com.busymac.busycontacts.pkg"

  zap trash: [
    "~/Library/Application Scripts/com.busymac.busycontacts",
    "~/Library/Application Scripts/N4RA379GBW.com.busymac.busycontacts",
    "~/Library/Application Scripts/N4RA379GBW.com.busymac.contacts/",
    "~/Library/Application Support/Mail/BusyContacts/",
    "~/Library/Containers/com.busymac.busycontacts",
    "~/Library/Group Containers/N4RA379GBW.com.busymac.busycontacts",
    "~/Library/Group Containers/N4RA379GBW.com.busymac.contacts",
  ]
end
