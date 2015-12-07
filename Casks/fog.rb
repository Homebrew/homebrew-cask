cask :v1 => 'fog' do
  version '1.0.0'
  sha256 '61631589fddeb657f41d713e8edbb31430e975b1cc4ee870581110e422dddbe8'

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
