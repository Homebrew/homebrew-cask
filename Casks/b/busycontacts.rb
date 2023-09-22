cask "busycontacts" do
  version "2023.3.1,2023-09-22-12-44"
  sha256 "a930385d785d1aea62947abe55208a80af1d32aaa4c0242aa24fbcfdd50f991e"

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

  uninstall pkgutil: "com.busymac.busycontacts.pkg",
            quit:    "com.busymac.busycontacts",
            signal:  ["KILL", "com.busymac.busycontacts"]

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
