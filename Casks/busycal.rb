cask 'busycal' do
  version '3.7.2'
  sha256 '54105615b6eca1f4d3b1f6a08db0d1fcc7dfbd955b2d4655e5a87ba8eada6c87'

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
