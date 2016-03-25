cask 'cumulus' do
  version '0.6.1'
  sha256 'dfaf8f3e5e6867888974cbacd751755806d6afc230e6cf53bb9760df888091f4'

  # github.com/gillesdemey/Cumulus was verified as official when first introduced to the cask
  url "https://github.com/gillesdemey/Cumulus/releases/download/v#{version}/Cumulus-#{version}-osx.dmg"
  appcast 'https://github.com/gillesdemey/Cumulus/releases.atom',
          checkpoint: '9fb5538209688ad0dede439f399044e156f183b694d5751cf3f66e357800be9d'
  name 'Cumulus'
  homepage 'https://gillesdemey.github.io/Cumulus/'
  license :oss

  app 'Cumulus.app'

  zap delete: [
                '~/Library/Application Support/Cumulus',
                '~/Library/Caches/Cumulus',
                '~/Library/Preferences/com.gillesdemey.cumulus.plist',
                '~/Library/Saved Application State/com.gillesdemey.cumulus.savedState',
              ]
end
