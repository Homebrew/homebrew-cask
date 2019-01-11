cask 'ganache' do
  version '1.2.3'
  sha256 '9346adf4f87fd2d4d92ab4f64d98011dfb7e71f84692ed35b1d73f040e86f0bf'

  # github.com/trufflesuite/ganache was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom'
  name 'Ganache'
  homepage 'https://truffleframework.com/ganache/'

  app 'Ganache.app'
end
