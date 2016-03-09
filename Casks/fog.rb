cask 'fog' do
  version '1.0.5'
  sha256 'cdb3e687967f87de936e87ee1812824085b159da688d0d3a9aefeeca00615ee8'

  url "https://github.com/vitorgalvao/fog/releases/download/v#{version}/Fog-osx-#{version}.zip"
  appcast 'https://github.com/vitorgalvao/fog/releases.atom',
          checkpoint: '805a1e4d02c6aa34ae9633c9f42ef5668f2a6ccfe1c6d7c5fbde6932bf9a7721'
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
