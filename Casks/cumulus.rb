cask :v1 => 'cumulus' do
  version '0.5.2'
  sha256 '9100fdad02b0cea69fbfcc351052fb2f262034456d043abd724b8124a9ca24a5'

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
