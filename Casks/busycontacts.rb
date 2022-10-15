cask "busycontacts" do
  version "2022.4.1,2022-10-16-02-00"
  sha256 "d78b29b3a0a373fb86cda50b500a116ceea189ed75045267656ffce000324a64"

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
end
