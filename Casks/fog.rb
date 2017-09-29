cask 'fog' do
  version '1.3.0'
  sha256 '2d34cb88b862bf21dafb836b8b5d84539fe944be1c6ddcd219390b70a8896e1a'

  url "https://github.com/vitorgalvao/fog/releases/download/#{version}/Fog-macos-#{version}.zip"
  appcast 'https://github.com/vitorgalvao/fog/releases.atom',
          checkpoint: '673383a0d6cfc13c5873b24d4f3ec44b58875e9d37e993e098ebeba597975868'
  name 'Fog'
  homepage 'https://github.com/vitorgalvao/fog'

  app 'Fog.app'

  uninstall quit: 'com.vitorgalvao.fog'

  zap delete: [
                '~/Library/Application Support/Fog',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vitorgalvao.fog.sfl',
                '~/Library/Caches/Fog',
                '~/Library/Preferences/com.vitorgalvao.fog.helper.plist',
                '~/Library/Preferences/com.vitorgalvao.fog.plist',
                '~/Library/Saved Application State/com.vitorgalvao.fog.savedState',
              ]
end
