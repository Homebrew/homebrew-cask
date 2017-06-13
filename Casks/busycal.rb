cask 'busycal' do
  version :latest
  sha256 :no_check

  url 'https://www.busymac.com/download/BusyCal.zip'
  name 'BusyCal'
  homepage 'https://busymac.com/busycal/index.html'

  auto_updates true

  pkg 'BusyCal Installer.pkg'

  uninstall pkgutil: 'com.busymac.busycal3.pkg',
            quit:    [
                       'com.busymac.busycal3',
                       'N4RA379GBW.com.busymac.busycal3.alarm',
                     ]

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.busymac.busycal3.sfl',
                '~/Library/Containers/com.busymac.busycal3',
                '~/Library/Containers/N4RA379GBW.com.busymac.busycal3.alarm',
                '~/Library/Group Containers/com.busymac.busycal3',
                '~/Library/Group Containers/N4RA379GBW.com.busymac.busycal3',
              ]
end
