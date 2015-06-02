cask :v1 => 'iterm2' do
  # note: "2" is not a version number, but indicates a different vendor
  version '2.1.1'
  sha256 'b8f1bbd11cdb3e26fd9fab6971c28ebeb422361b2cc5fd6e4a843836d5dedeb0'

  url "https://www.iterm2.com/downloads/stable/iTerm2-#{version.gsub('.','_')}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  appcast 'https://iterm2.com/appcasts/final.xml',
          :sha256 => 'd8e8c6f4990676b33c81d7b577b96ef5eed9f8f872c104d02f25e0290b0a8ee5'
  license :gpl

  app 'iTerm.app'

  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
