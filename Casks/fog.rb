cask :v1 => 'fog' do
  version '1.0.1'
  sha256 '6eaa11324ba9fc470c577ed067d3843e5f2ef7ec8da012dcfc780ffd8b832b69'

  url "https://github.com/vitorgalvao/fog/releases/download/v#{version}/Fog-osx-#{version}.zip"
  appcast 'https://github.com/vitorgalvao/fog/releases.atom'
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
