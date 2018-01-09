cask 'ganache' do
  version '1.0.1'
  sha256 '40f1600a81737b653349152af9d94af8bc46233978584bf47d8182404e973d56'

  # github.com/trufflesuite/ganache was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom',
          checkpoint: '4ec6dfca043d894dab810fa8284b25773e53a4cad38496342e7cc9105253f9b2'
  name 'Ganache'
  homepage 'http://truffleframework.com/ganache/'

  app 'Ganache.app'
end
