cask 'busycal' do
  version '3.10.0,401003'
  sha256 'b7a020f0a4417d042adbc4a0c601ac15863ffe1b5555af4f3041591675bd14e8'

  url 'https://www.busymac.com/download/BusyCal.zip'
  appcast 'https://www.busymac.com/busycal/news.plist'
  name 'BusyCal'
  homepage 'https://busymac.com/busycal/index.html'

  auto_updates true

  pkg 'BusyCal Installer.pkg'

  uninstall pkgutil: "com.busymac.busycal#{version.major}.pkg",
            quit:    "N4RA379GBW.com.busymac.busycal#{version.major}.alarm",
            signal:  ['TERM', "com.busymac.busycal#{version.major}"]

  zap trash: [
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.busymac.busycal#{version.major}.sfl*",
               "~/Library/Containers/com.busymac.busycal#{version.major}",
               "~/Library/Containers/N4RA379GBW.com.busymac.busycal#{version.major}.alarm",
               "~/Library/Group Containers/com.busymac.busycal#{version.major}",
               "~/Library/Group Containers/N4RA379GBW.com.busymac.busycal#{version.major}",
             ]
end
