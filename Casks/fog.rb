cask 'fog' do
  version '1.1.0'
  sha256 '286bbc01adabd0587c180699311ce851771d2b1097df217625ba588016892388'

  url "https://github.com/vitorgalvao/fog/releases/download/v#{version}/Fog-osx-#{version}.zip"
  appcast 'https://github.com/vitorgalvao/fog/releases.atom',
          checkpoint: '2c0c2613ea83b4e5b1fced822ab99af24e16a478a6c5f95c146432c24215c056'
  name 'Fog'
  homepage 'https://github.com/vitorgalvao/fog'

  app 'Fog.app'

  uninstall quit: 'com.vitorgalvao.fog'

  zap delete: [
                '~/Library/Application Support/Fog',
                '~/Library/Caches/Fog',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vitorgalvao.fog.sfl',
                '~/Library/Saved Application State/com.vitorgalvao.fog.savedState',
              ]
end
