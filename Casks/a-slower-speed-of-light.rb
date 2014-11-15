cask :v1 => 'a-slower-speed-of-light' do
  version 'summer-12'
  sha256 'ab5a66a9857b979211d0506a005d678f185705bb848bd42ac91d9628e0945a39'

  url 'http://web.mit.edu/gambit/summer12/speedoflight/A_Slower_Speed_of_Light_OSX.zip'
  homepage 'http://gamelab.mit.edu/games/a-slower-speed-of-light/'
  license :gratis

  container :nested => 'A Slower Speed of Light.dmg'
  app 'A Slower Speed of Light.app'
end
