cask "busycontacts" do
  version "2024.3.1"
  sha256 "fba998ab3612ed96bd31f4b9ec50e65f5d7973e9db7478a013ded2b8cc8a0602"

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
