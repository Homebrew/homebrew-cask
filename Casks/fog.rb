cask 'fog' do
  version '1.0.4'
  sha256 'b75e93d0fa9dd7551ffd209caf9d6e73ed5d0415f67ecc4e65e2314d7e898a93'

  url "https://github.com/vitorgalvao/fog/releases/download/v#{version}/Fog-osx-#{version}.zip"
  appcast 'https://github.com/vitorgalvao/fog/releases.atom',
          checkpoint: '64ab0e0ac8e90e8a3fb133259aa6dec69bd14efbbabc21a0cec9cc1aad67af3c'
  name 'Fog'
  homepage 'https://github.com/vitorgalvao/fog'
  license :public_domain

  app 'Fog.app'

  uninstall quit: 'com.vitorgalvao.fog'

  zap delete: [
                '~/Library/Application Support/Fog',
                '~/Library/Caches/Fog',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vitorgalvao.fog.sfl',
                '~/Library/Saved Application State/com.vitorgalvao.fog.savedState',
              ]
end
