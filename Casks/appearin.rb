cask 'appearin' do
  version '1.0.0'
  sha256 'eacd73dad26341235eba953f533cd1bc59f2d6e1e07d249b56e709f00aca5e82'

  url "https://github.com/vitorgalvao/appear.in/releases/download/#{version}/appear.in-osx-#{version}.zip"
  appcast 'https://github.com/vitorgalvao/appear.in/releases.atom',
          checkpoint: '7524292c3e42d0f805a44991c2d8f9459891516317eab49a446a414163d8eb5d'
  name 'appear.in'
  homepage 'https://github.com/vitorgalvao/appear.in'

  app 'appear.in.app'

  uninstall quit: 'com.vitorgalvao.appear.in'

  zap trash: [
               '~/Library/Application Support/appear.in',
               '~/Library/Caches/appear.in',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vitorgalvao.appear.in.sfl*',
               '~/Library/Saved Application State/com.vitorgalvao.appear.in.savedState',
             ]
end
