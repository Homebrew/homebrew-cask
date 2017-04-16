cask :v1 => 'popcorn-time' do
  version '0.3.7.1'
  sha256 'ef21b6db873ee173883390bfc83204aa28b869ee24545cc0b6706152f46710ed'

  url 'http://104.131.61.151/build/Popcorn-Time-0.3.7.1-Mac.dmg'
  name 'Popcorn Time'
  homepage 'https://popcorntime.io/'
  license :gpl

  app 'Popcorn-Time.app'
end
