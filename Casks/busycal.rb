cask "busycal" do
  version "3.10.3,401049"
  sha256 "e073a0735e8f367db71e61bca43fdca7eff1f4b531362ca9ca60e83b7693c815"

  url "https://www.busymac.com/download/BusyCal.zip"
  appcast "https://www.busymac.com/busycal/news.plist"
  name "BusyCal"
  desc "Calendar software focusing on flexibility and reliability"
  homepage "https://busymac.com/busycal/index.html"

  auto_updates true

  pkg "BusyCal Installer.pkg"

  uninstall pkgutil: "com.busymac.busycal#{version.major}.pkg",
            quit:    "N4RA379GBW.com.busymac.busycal#{version.major}.alarm",
            signal:  ["TERM", "com.busymac.busycal#{version.major}"]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.busymac.busycal#{version.major}.sfl*",
    "~/Library/Containers/com.busymac.busycal#{version.major}",
    "~/Library/Containers/N4RA379GBW.com.busymac.busycal#{version.major}.alarm",
    "~/Library/Group Containers/com.busymac.busycal#{version.major}",
    "~/Library/Group Containers/N4RA379GBW.com.busymac.busycal#{version.major}",
  ]
end
