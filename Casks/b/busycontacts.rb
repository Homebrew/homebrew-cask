cask "busycontacts" do
  version "2023.3.1,2023-10-09-20-25"
  sha256 "04e074c1bcd4b1293d1fa7941d2c207cc0124bd692b6968434bea1f8158cf7d4"

  url "https://7e968b6ce8a839f034d9-23cfb9eddcb7b94cb43ba95f95a76900.ssl.cf1.rackcdn.com/bct-#{version.csv.first}-#{version.csv.second}.zip",
      verified: "7e968b6ce8a839f034d9-23cfb9eddcb7b94cb43ba95f95a76900.ssl.cf1.rackcdn.com/"
  name "BusyContacts"
  desc "Contact manager focusing on efficiency"
  homepage "https://www.busymac.com/busycontacts/index.html"

  livecheck do
    url "https://www.busymac.com/download/BusyContacts.zip"
    strategy :header_match do |headers|
      match = headers["location"].match(/bct-(\d+(?:\.\d+)+)-(.*?)\.zip/)
      next if match.blank?

      "#{match[1]},#{match[2]}"
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
