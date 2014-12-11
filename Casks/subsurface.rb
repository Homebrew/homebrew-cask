cask :v1 => 'subsurface' do
  version '4.1'
  sha256 'b4eef933e507ffb5a56501a249c1dfcf389edd3cdfb82f5ac0448183c4b8113c'

  url "https://subsurface.hohndel.org/downloads/Subsurface-#{version}.dmg"
  homepage 'http://subsurface.hohndel.org/'
  license :unknown    # todo: improve this machine-generated value

  app 'Subsurface.app'
end
