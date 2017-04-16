cask :v1 => 'popcorn-time' do
  version '3.7'
  sha256 :no_check

  url 'http://104.131.187.115/build/Popcorn-Time-0.3.7.2-Mac.dmg'
  name 'Popcorn-Time'
  homepage 'https://popcorntime.io/'
  license :freemium

  app 'Popcorn-Time.app'
end
