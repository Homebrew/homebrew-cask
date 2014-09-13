class Slate < Cask
  version 'latest'
  sha256 :no_check

  url 'http://slate.ninjamonkeysoftware.com/Slate.dmg'
  appcast 'https://www.ninjamonkeysoftware.com/slate/appcast.xml'
  homepage 'https://github.com/jigish/slate'

  app 'Slate.app'
  zap :files => [
                 '~/.slate',
                 '~/.slate.js',
                 '~/Library/Application Support/com.slate.Slate',
                ]
end
