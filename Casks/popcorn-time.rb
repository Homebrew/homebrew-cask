cask :v1 => 'popcorn-time' do
  version '0.3.6'
  sha256 '48419eaa34ab31ca071e010ff49c065ba23ad06bd8f1b50349308980e937dfeb'

  url "http://212.47.235.197/build/Popcorn-Time-#{version}-Mac.dmg"
  name 'Popcorn-Time'
  homepage 'https://popcorntime.io/'
  license :unknown

  app 'Popcorn-Time.app'
end
