cask 'rescuetime' do
  version '2.14.2.3'
  sha256 '2b72b590c56603895e30fc35a1cdbba83427b2247eeeea753af91402ab5a1d38'

  url 'https://www.rescuetime.com/installers/RescueTimeInstaller.pkg'
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
