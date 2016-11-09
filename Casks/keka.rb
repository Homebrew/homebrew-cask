cask 'keka' do
  version '1.0.6'
  sha256 'c164cdca023c47a9c61ef1c93bf64252636ed73433bf36117408db4a1647c966'

  url "http://www.kekaosx.com/release/Keka-#{version}.dmg"
  appcast 'http://www.kekaosx.com/update/keka.xml',
          checkpoint: '76c07c4ead37d0ec9771f0aec315596d496fa0f80aacb9188c5ac5d9cf631e4e'
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
