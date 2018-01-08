cask 'ganache' do
  version '1.0.1'
  sha256 '40f1600a81737b653349152af9d94af8bc46233978584bf47d8182404e973d56'

  # github.com/trufflesuite/ganache was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom',
          checkpoint: '65a02e9d4c2b2d07c5ab34ae28b02da9f9b445ee243bf6340a236e9d8ff1dcbe'
  name 'Ganache'
  homepage 'http://truffleframework.com/ganache/'

  app 'Ganache.app'
end
