cask :v1 => 'cumulus' do
  version '0.4.0'
  sha256 '87a638b3796ca066dc39218e476351a483156170b809c25f7a94acf0f13d7689'

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
