cask 'jettison' do
  version '1.6'
  sha256 '2dae3d80a35a6eb9013b053eb98ec8f082168ad9c8a1041bd173fb6ec9892a6b'

  url "https://stclairsoft.com/download/Jettison-#{version}.dmg"
  appcast 'https://stclairsoft.com/cgi-bin/sparkle.cgi?JT',
          checkpoint: '19d162dbe3a48351efbf2712d9f41acdff593d5e3a1e37a2f20c5d896010ee61'
  name 'Jettison'
  name 'St. Clair Software Jettison'
  homepage 'https://stclairsoft.com/Jettison/'

  auto_updates true

  app 'Jettison.app'

  uninstall login_item: 'Jettison'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.jettison.sfl*',
               '~/Library/Application Support/Jettison',
               '~/Library/Preferences/com.stclairsoft.Jettison.plist',
               '~/Library/Preferences/com.stclairsoft.Jettison.AppStore.plist',
               '~/Library/Caches/com.stclairsoft.Jettison',
             ]
end
