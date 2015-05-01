cask :v1 => 'popcorntime' do
  version :latest
  sha256 :no_check

  url 'http://popcorn-time.se/PopcornTime-latest.dmg'
  name 'Popcorn Time'
  homepage 'http://popcorn-time.se/'
  license :gpl

  app 'PopcornTime.app'
end
