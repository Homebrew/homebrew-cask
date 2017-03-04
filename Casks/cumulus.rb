cask 'cumulus' do
  version '0.10.0'
  sha256 'a48b4f521e6263fb87e33baed71d83cd0680901a8bb006b43af57900d17084a0'

  # github.com/gillesdemey/Cumulus was verified as official when first introduced to the cask
  url "https://github.com/gillesdemey/Cumulus/releases/download/v#{version}/Cumulus-#{version}-osx.dmg"
  appcast 'https://github.com/gillesdemey/Cumulus/releases.atom',
          checkpoint: '43399ed55bb1f513470e8e331d218cbe20c7a1a406c7bdc6d5f2885d92f425bf'
  name 'Cumulus'
  homepage 'https://gillesdemey.github.io/Cumulus/'

  app 'Cumulus.app'

  zap delete: [
                '~/Library/Application Support/Cumulus',
                '~/Library/Caches/Cumulus',
                '~/Library/Preferences/com.gillesdemey.cumulus.plist',
                '~/Library/Saved Application State/com.gillesdemey.cumulus.savedState',
              ]
end
