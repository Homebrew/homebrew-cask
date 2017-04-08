cask 'cumulus' do
  version '0.10.1'
  sha256 '9eaf742c4f933760bb2cb6390c018cdf525b97c06461608050d8554c4a5aa8e9'

  # github.com/gillesdemey/Cumulus was verified as official when first introduced to the cask
  url "https://github.com/gillesdemey/Cumulus/releases/download/v#{version}/Cumulus-#{version}.dmg"
  appcast 'https://github.com/gillesdemey/Cumulus/releases.atom',
          checkpoint: '0c0c3542e7562241cecc3dd19b95d813d44f28f8232961658f9d0ebd429a9654'
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
