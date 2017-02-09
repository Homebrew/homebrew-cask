cask 'fog' do
  version '1.2.0'
  sha256 '358c7e310fb22f5877e4403e8ed1b057c9caf9fff908268d77895d656094392d'

  url "https://github.com/vitorgalvao/fog/releases/download/v#{version}/Fog-macos-#{version}.zip"
  appcast 'https://github.com/vitorgalvao/fog/releases.atom',
          checkpoint: '676df07a53038a8c12bf53d4d9e5d76190982898e6342c1d9c276fbad6de3fc9'
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
