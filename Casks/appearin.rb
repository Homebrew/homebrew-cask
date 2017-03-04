cask 'appearin' do
  version '1.0.0'
  sha256 'eacd73dad26341235eba953f533cd1bc59f2d6e1e07d249b56e709f00aca5e82'

  url "https://github.com/vitorgalvao/appear.in/releases/download/#{version}/appear.in-osx-#{version}.zip"
  appcast 'https://github.com/vitorgalvao/appear.in/releases.atom',
          checkpoint: '2e23517fecebc9e944de2041743203453632296b14521655392b57a08c4de0bc'
  name 'appear.in'
  homepage 'https://github.com/vitorgalvao/appear.in'

  app 'appear.in.app'

  uninstall quit: 'com.vitorgalvao.appear.in'

  zap delete: [
                '~/Library/Application Support/appear.in',
                '~/Library/Caches/appear.in',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vitorgalvao.appear.in.sfl',
                '~/Library/Saved Application State/com.vitorgalvao.appear.in.savedState',
              ]
end
