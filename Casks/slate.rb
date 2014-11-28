cask :v1 => 'slate' do
  version :latest
  sha256 :no_check

  url 'http://slate.ninjamonkeysoftware.com/Slate.dmg'
  appcast 'https://www.ninjamonkeysoftware.com/slate/appcast.xml'
  homepage 'https://github.com/jigish/slate'
  license :oss

  app 'Slate.app'

  zap :delete => [
                  '~/.slate',
                  '~/.slate.js',
                  '~/Library/Application Support/com.slate.Slate',
                 ]
end
