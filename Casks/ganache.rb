cask 'ganache' do
  version '2.1.2'
  sha256 '6ad434dc1fab941ac40e86acb2c755348974c84a2a543ee9ec0be16f192bb230'

  # github.com/trufflesuite/ganache was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}-mac.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom'
  name 'Ganache'
  homepage 'https://truffleframework.com/ganache/'

  app 'Ganache.app'
end
