cask 'fox' do
  version '1.7.8'
  sha256 '51da8d1b625cc6ae17c715599e52269751044330508ac084931d6a2bc2eccb43'

  url "https://www.fox.one/build/Fox-#{version}.dmg"
  name 'Fox'
  homepage 'https://www.fox.one/'

  app 'Fox.app'
end
