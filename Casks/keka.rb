cask 'keka' do
  version '1.0.12'
  sha256 '3faea86fe3e281cf3e2f4134692386e4075b7522f153c7d2e5eda5c1d99557c6'

  # github.com/aonez/Keka was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom',
          checkpoint: '212380406d7e26aeb7b3cd2c7a9edf51ce2f12d62f50501808c5a8866686e91e'
  name 'Keka'
  homepage 'http://www.kekaosx.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Keka.app'

  zap delete: [
                '~/Library/Application Support/Keka',
                '~/Library/Caches/com.aone.keka',
                '~/Library/Preferences/com.aone.keka.plist',
                '~/Library/Saved Application State/com.aone.keka.savedState',
              ]
end
