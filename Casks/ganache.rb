cask 'ganache' do
  version '2.3.1'
  sha256 '548ba0a069beb08a9e15c56c97f51978a01b312b8fd23eaca6eb08f35651502a'

  # github.com/trufflesuite/ganache/ was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}-mac.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom'
  name 'Ganache'
  homepage 'https://truffleframework.com/ganache/'

  app 'Ganache.app'
end
