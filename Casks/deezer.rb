cask 'deezer' do
  version '1.1.2_4210'
  sha256 'f59574ed40273f53e550a717fba114468fd0d42ff5ca398ff18b3a038e87aaec'

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
