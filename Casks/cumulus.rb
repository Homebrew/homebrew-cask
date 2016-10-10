cask 'cumulus' do
  version '0.7.1'
  sha256 '43cc394b342e56d4dfbdfcded4f98fcdaaf92fd0097d7a6fa4cabc46794156e7'

  # github.com/gillesdemey/Cumulus was verified as official when first introduced to the cask
  url "https://github.com/gillesdemey/Cumulus/releases/download/v#{version}/Cumulus-#{version}-osx.dmg"
  appcast 'https://github.com/gillesdemey/Cumulus/releases.atom',
          checkpoint: '8ad60dd31679946c1c03a8d6afa4b6a14fa45760b98fb06924e2ed4491790c54'
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
