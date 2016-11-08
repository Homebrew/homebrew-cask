cask 'cumulus' do
  version '0.8.0'
  sha256 '9d70fe2f11f0bdabb107d1087bb01674d9bf16360602947015160ede84573c9e'

  # github.com/gillesdemey/Cumulus was verified as official when first introduced to the cask
  url "https://github.com/gillesdemey/Cumulus/releases/download/v#{version}/Cumulus-#{version}-osx.dmg"
  appcast 'https://github.com/gillesdemey/Cumulus/releases.atom',
          checkpoint: 'f8d52035a88de78b528dd398aa7663b0862ee289d7e38168a27f0c0340672a1d'
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
