cask 'deezer' do
  version '1.1.3,4308'
  sha256 '244530cb29c232c8464660153ddd052d81c7c6e0a6317288544f3225f55d79e5'

  url "http://e-cdn-content.deezer.com/builds/mac/Deezer_#{version.after_comma}.dmg"
  name 'Deezer'
  homepage 'https://www.deezer.com/formac'

  app 'Deezer.app'

  zap delete: [
                '~/Library/Application Support/Deezer',
                '~/Library/Preferences/com.deezer.Deezer.plist',
              ]
end
