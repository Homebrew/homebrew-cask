cask 'fog' do
  version '1.0.3'
  sha256 '90c8375ce98b2b4a9234fb94210352f32c42cd6940b8a6dc535b943c8d0f5e1f'

  url "https://github.com/vitorgalvao/fog/releases/download/v#{version}/Fog-osx-#{version}.zip"
  appcast 'https://github.com/vitorgalvao/fog/releases.atom',
          :sha256 => '55cdff2c80c70caca60c72411d13540caf420e0c67e733af21321c57ca43ed6e'
  name 'Fog'
  homepage 'https://github.com/vitorgalvao/fog'
  license :public_domain

  app 'Fog.app'

  uninstall :quit => 'com.vitorgalvao.fog'

  zap :delete => [
                   '~/Library/Application Support/Fog',
                   '~/Library/Caches/Fog',
                   '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vitorgalvao.fog.sfl',
                   '~/Library/Saved Application State/com.vitorgalvao.fog.savedState',
                 ]
end
