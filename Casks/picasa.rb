cask :v1 => 'picasa' do
  version '3.9'
  sha256 'b6cbad2a5ecb20f905c434a14214f425ddf5708769c8c5c023ddc365511afcb1'

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
