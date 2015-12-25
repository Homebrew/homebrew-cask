cask 'fog' do
  version '1.0.2'
  sha256 '0fff544bfecf6f2fb8651285f47a3f39ec8dfa9aa45f0460a502625beada888d'

  url "https://github.com/vitorgalvao/fog/releases/download/v#{version}/Fog-osx-#{version}.zip"
  appcast 'https://github.com/vitorgalvao/fog/releases.atom',
          :sha256 => '5171ac0d969f838df2839b10cc4e5b102da69a3599b63a3d7c214ac64a1bcd4f'
  name 'Fog'
  homepage 'https://github.com/vitorgalvao/fog'
  license :public_domain

  app 'Fog.app'

  uninstall :quit => 'com.vitorgalvao.fog'

  zap :delete => [
                  '~/Library/Application Support/Fog',
                  '~/Library/Caches/Fog',
                  '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vitorgalvao.fog.sfl',
                  '~/Library/Saved Application State/com.vitorgalvao.fog.savedState'
                 ]
end
