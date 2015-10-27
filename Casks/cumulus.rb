cask :v1 => 'cumulus' do
  version '0.5.0'
  sha256 '6d131749b379965157b41ebdf2ec67dc0a011ea0e0e9e409cf945ddc5ed5150e'

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
