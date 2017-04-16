cask :v1 => 'popcorntime' do
  version '0.3.6'
  sha256 '48419eaa34ab31ca071e010ff49c065ba23ad06bd8f1b50349308980e937dfeb'

  url "http://185.67.0.171/build/Popcorn-Time-#{version}-Mac.dmg"
  name 'popcorntime'
  homepage 'https://popcorntime.io/'
  license :closed

  app 'Popcorn-Time.app'
end
