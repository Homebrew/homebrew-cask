cask :v1 => 'cumulus' do
  version '0.5.4'
  sha256 'cb0a6c6ae579e4877c634b72db3a5425d975f91bd4353c7c3ccd63d05aa8713f'

  url "https://github.com/gillesdemey/Cumulus/releases/download/v#{version}/Cumulus-#{version}-osx.zip"
  appcast 'https://github.com/gillesdemey/Cumulus/releases.atom'
  name 'Cumulus'
  homepage 'http://gillesdemey.github.io/Cumulus/'
  license :oss

  app 'Cumulus.app'

  zap :delete => [
                  '~/Library/Application Support/Cumulus',
                  '~/Library/Caches/Cumulus',
                  '~/Library/Preferences/com.gillesdemey.cumulus.plist',
                  '~/Library/Saved Application State/com.gillesdemey.cumulus.savedState'
                 ]
end
