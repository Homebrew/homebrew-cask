cask 'busycal' do
  version '3.5.0'
  sha256 'd3fa38e5414752ac66fd92e05fec35f28941e42f212cd5f49ac828b6750454c6'

  url 'https://www.busymac.com/download/BusyCal.zip'
  appcast 'https://busymac.com/busycal/releasenotes.html'
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
