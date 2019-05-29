cask 'busycal' do
  version '3.6.3,360302'
  sha256 '39f8373fe82bc83c70dbe1268f5ae6cf8c9c7962485d9c921fe103a372dd2107'

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
