cask "busycal" do
  version "2022.4.2,2022-10-16-02-14"
  sha256 "da18f71694df46ca0493351bf79c89121f555be8fd2d664ea11a745390f91ac1"

  url "https://7e968b6ce8a839f034d9-23cfb9eddcb7b94cb43ba95f95a76900.ssl.cf1.rackcdn.com/bcl-#{version.csv.first}-#{version.csv.second}.zip",
      verified: "7e968b6ce8a839f034d9-23cfb9eddcb7b94cb43ba95f95a76900.ssl.cf1.rackcdn.com/"
  name "BusyCal"
  desc "Calendar software focusing on flexibility and reliability"
  homepage "https://busymac.com/busycal/index.html"

  livecheck do
    url "https://www.busymac.com/download/BusyCal.zip"
    strategy :header_match do |headers|
      match = headers["location"].match(/bcl-(\d+(?:\.\d+)+)-(.*?)\.zip/)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  pkg "BusyCal Installer.pkg"

  uninstall pkgutil: "com.busymac.busycal3.pkg",
            quit:    "N4RA379GBW.com.busymac.busycal3.alarm",
            signal:  ["TERM", "com.busymac.busycal3"],
            delete:  "/Applications/BusyCal.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.busymac.busycal#{version.major}.sfl*",
    "~/Library/Containers/com.busymac.busycal#{version.minor}",
    "~/Library/Containers/N4RA379GBW.com.busymac.busycal#{version.minor}.alarm",
    "~/Library/Group Containers/com.busymac.busycal#{version.minor}",
    "~/Library/Group Containers/N4RA379GBW.com.busymac.busycal#{version.minor}",
  ]
end
