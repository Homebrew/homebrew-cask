cask :v1 => 'popcorn-time' do
  version '0.3.5.4'
  sha256 :no_check

  url 'https://get.popcorntime.io/build/Popcorn-Time-#{version}-Mac.dmg'
  homepage 'http://popcorntime.io/'
  license :unknown

  app 'Popcorn-Time.app'
end