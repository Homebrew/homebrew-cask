class Istumbler < Cask
  version '100'
  sha256 '19fb21209669683ad5419643c65fb457245ce076805f2ec022edde0cb7e161b4'

  url "https://istumbler.net/downloads/istumbler-#{version}.dmg"
  homepage 'http://istumbler.net/'
  license :unknown

  app 'iStumbler.app'
end
