cask 'rescuetime' do
  version '2.15.0.1'
  sha256 '4df6804e31ee27df280aa6b20f80e7d2cf0c5e94e42a0659c2bd2e434d26bd7d'

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
