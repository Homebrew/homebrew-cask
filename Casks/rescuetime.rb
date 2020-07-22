cask 'rescuetime' do
  version '2.16.0.1'
  sha256 '92bc00db7f9c9c90c07428bd6e92e786ef36bfad4c4d1d4ca2684eb5345ac90f'

  url 'https://www.rescuetime.com/installers/RescueTimeInstaller.pkg'
  appcast 'https://www.rescuetime.com/installers/appcast'
  name 'RescueTime'
  homepage 'https://www.rescuetime.com/'

  pkg 'RescueTimeInstaller.pkg'

  uninstall pkgutil: 'com.rescuetime.RescueTime'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rescuetime.rescuetime.sfl*',
               '~/Library/Caches/com.rescuetime.RescueTime',
               '~/Library/Preferences/com.rescuetime.RescueTime.plist',
               '~/Library/RescueTime.com',
             ]
end
