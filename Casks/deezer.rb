cask 'deezer' do
  version '1.1.3_4308'
  sha256 '244530cb29c232c8464660153ddd052d81c7c6e0a6317288544f3225f55d79e5'

  url "http://e-cdn-content.deezer.com/builds/mac/Deezer_#{version.sub(%r{.*_}, '')}.dmg"
  name 'Deezer'
  homepage 'https://www.deezer.com/formac'
  license :gratis

  app 'Deezer.app'

  zap delete: [
                '~/Library/Application Support/Deezer',
                '~/Library/Preferences/com.deezer.Deezer.plist',
              ]
end
