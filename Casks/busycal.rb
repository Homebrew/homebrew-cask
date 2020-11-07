cask "busycal" do
  version "3.11,411120"
  sha256 "b720339f51ea767e3b8e2c3e067eee0c7e454170364f6b2527b90f11a7529de1"

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
