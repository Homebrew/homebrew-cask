cask 'slate' do
  version :latest
  sha256 :no_check

  # ninjamonkeysoftware.com is the official download host per the vendor homepage
  url 'http://slate.ninjamonkeysoftware.com/Slate.dmg'
  appcast 'https://www.ninjamonkeysoftware.com/slate/appcast.xml',
          :checkpoint => '22d87fed27d14f6e6b25c5334cc6e021e086549ddd4c371de83f64463daa1115'
  name 'Slate'
  homepage 'https://github.com/jigish/slate'
  license :gpl

  app 'Slate.app'

  zap :delete => [
                   '~/.slate',
                   '~/.slate.js',
                   '~/Library/Application Support/com.slate.Slate',
                 ]
end
