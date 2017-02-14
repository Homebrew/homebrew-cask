cask 'fog' do
  version '1.2.0'
  sha256 '17084b6e5cb885f56d273040b29a690715339c0e425b433be8447f74e336900e'

  url "https://github.com/vitorgalvao/fog/releases/download/v#{version}/Fog-macos-#{version}.zip"
  appcast 'https://github.com/vitorgalvao/fog/releases.atom',
          checkpoint: 'cbe090418947bcb74fb49c8ea1d621123123ea523a682bb08248b970f748bc95'
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
