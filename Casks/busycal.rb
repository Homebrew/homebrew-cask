cask 'busycal' do
  version '3.8.2,380205'
  sha256 'd256b235ef95f3d7e22ad371f62d458bfbf75c4b518a33dc6d676127631e5e3f'

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
