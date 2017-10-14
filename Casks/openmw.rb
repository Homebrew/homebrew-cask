cask 'openmw' do
  version '0.42.0'
  sha256 '17d08886bb722a0614980201b432a4c9d75582e7a5112e319b2cdab8e0f53b59'

  # github.com/OpenMW/openmw was verified as official when first introduced to the cask
  url "https://github.com/OpenMW/openmw/releases/download/openmw-#{version}/OpenMW-#{version}.dmg"
  appcast 'https://github.com/OpenMW/openmw/releases.atom',
          checkpoint: 'd23841a67532f150fd31aa207b5e15220bfa8250e76932242d13813ac064e7d2'
  name 'OpenMW'
  homepage 'https://openmw.org/'

  app 'OpenMW.app'
  app 'OpenMW-CS.app'
end
