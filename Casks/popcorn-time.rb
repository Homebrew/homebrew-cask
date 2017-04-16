class PopcornTime < Cask
  version '0.3.4'
  sha256 '3c6a7ab2f33a6fa9df0bf3332227ddf3e068a864fe195b8fd3ffff508ea80d4b'

  url "https://cdn.popcorntime.io/build/Popcorn-Time-#{version}-Mac.dmg"
  homepage 'https://popcorntime.io/'
  license :unknown

  app 'Popcorn-time.app'
end
