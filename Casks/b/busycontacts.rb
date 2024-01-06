cask "busycontacts" do
  version "2024.1.1,2024-01-06-16-59"
  sha256 "510ca19b288f4bca5ebc4f5ea20b4d6a24e520b98063ab97343171f74fb15eb2"

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
