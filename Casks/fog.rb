cask 'fog' do
  version '1.2.1'
  sha256 'e0ac5111f328a4c6d3e0f69518241e48e8aac38defaae7c71554c1999a085f7f'

  url "https://github.com/vitorgalvao/fog/releases/download/#{version}/Fog-macos-#{version}.zip"
  appcast 'https://github.com/vitorgalvao/fog/releases.atom',
          checkpoint: '439d40df4fef833383228ad7cbcbbaa59669a76f6ab28178de2aef92b4d5372d'
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
