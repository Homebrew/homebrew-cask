cask 'fox' do
  version '1.8.5'
  sha256 'a7e6f00137b35307a21ba7ea7560f4dd10941a0787615ea914b02ee1fe94caa6'

  url "https://www.fox.one/build/Fox-#{version}.dmg"
  name 'Fox'
  homepage 'https://www.fox.one/'

  app 'Fox.app'
end
