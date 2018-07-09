cask 'ganache' do
  version '1.2.0'
  sha256 '068bf7aa9e7b76f95e966630f8de30f8e41ab4d82b45e9392c29ab9747ecf4b2'

  # github.com/trufflesuite/ganache was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom'
  name 'Ganache'
  homepage 'http://truffleframework.com/ganache/'

  app 'Ganache.app'
end
