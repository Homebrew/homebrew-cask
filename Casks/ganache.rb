cask 'ganache' do
  version '2.3.0'
  sha256 '17740bbe33bb9db80ae3dd2d6b825b0b20836749845b51deb4c70cc1ec8fdb71'

  # github.com/trufflesuite/ganache/ was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}-mac.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom'
  name 'Ganache'
  homepage 'https://truffleframework.com/ganache/'

  app 'Ganache.app'
end
