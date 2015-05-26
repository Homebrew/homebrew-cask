cask :v1 => 'picasa' do
  version '3.9'
  sha256 '59a2549913f523dac5a51859de135d92e434c1801ca571eb2d74664d19d6b627'

  url "https://dl.google.com/photos/picasamac#{version.gsub('.', '')}.dmg"
  name 'Picasa'
  homepage 'http://picasa.google.com/'
  license :gratis

  app 'Picasa.app'

  zap :delete => [
                  '~/Library/Preferences/com.google.picasa.plist',
                  '~/Library/Application Support/Google/Picasa3',
                  '~/Library/Saved Application State/com.google.picasa.savedState'
                 ]
end
