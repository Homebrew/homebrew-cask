cask :v1 => 'popcorn-time' do
  version '0.3.5.4'
  sha256 'ed7012ac07bed4ccd7c6c5eb394b3573191a3bee'

  url 'https://get.popcorntime.io/build/Popcorn-Time-#{version}-Mac.dmg'
  homepage 'http://popcorntime.io/'
  license :unknown

  app 'Popcorn-Time.app'
end
