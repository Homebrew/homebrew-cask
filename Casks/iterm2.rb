cask :v1 => 'iterm2' do
  # note: "2" is not a version number, but indicates a different vendor
  version '2.0.0'
  sha256 '6a59e1b96d9037b6ff1b8aaaf7aed5cff572d74d6e58390db16028433769c058'

  url "http://www.iterm2.com/downloads/stable/iTerm2_v#{version.sub(%r{^(\d+)\.(\d+).*},'\1_\2')}.zip"
  homepage 'http://www.iterm2.com/'
  appcast 'http://iterm2.com/appcasts/final.xml',
          :sha256 => 'd8e8c6f4990676b33c81d7b577b96ef5eed9f8f872c104d02f25e0290b0a8ee5'
  license :gpl

  app 'iTerm.app'

  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
