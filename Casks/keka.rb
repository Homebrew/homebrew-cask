cask 'keka' do
  version '1.0.5'
  sha256 'c27401253aad6de5d9d19c5a2b548042bda713049caab8a850fd0c3a5858f6dd'

  url "http://www.kekaosx.com/release/Keka-#{version}.dmg"
  appcast 'http://www.kekaosx.com/update/keka.xml',
          checkpoint: 'b9ef692d877af3c3bb2e9f6dfc679786ed3cfad538f4fdb2485e592d55d600cb'
  name 'Keka'
  homepage 'http://kekaosx.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Keka.app'

  zap delete: [
                '~/Library/Application Support/Keka',
                '~/Library/Caches/com.aone.keka',
                '~/Library/Preferences/com.aone.keka.plist',
              ]
end
