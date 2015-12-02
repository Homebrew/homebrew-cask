cask :v1 => 'cumulus' do
  version '0.5.3'
  sha256 'afaafea99567a385b3b76fd6554be2448ea0941df93af088851214feaced9956'

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
