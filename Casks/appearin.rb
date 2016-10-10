cask 'appearin' do
  version '1.0.0'
  sha256 'eacd73dad26341235eba953f533cd1bc59f2d6e1e07d249b56e709f00aca5e82'

  url "https://github.com/vitorgalvao/appear.in/releases/download/#{version}/appear.in-osx-#{version}.zip"
  appcast 'https://github.com/vitorgalvao/appear.in/releases.atom',
          checkpoint: '4640526b621a7f622b852eebb3940bb7c3ce6773e4679130efde1ba1fc5296a2'
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
