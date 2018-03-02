cask 'merit' do
  version '0.3.10'
  sha256 '5f91e0892c86875bf9c3b6af9ff14d5bdf7971a3d7c5b6b32c334e12ce092e92'

  # github.com/trufflesuite/ganache was verified as official when first introduced to the cask
  url "https://github.com/meritlabs/merit/releases/download/m#{version}/merit-#{version}-macos.dmg"
  appcast 'https://github.com/meritlabs/merit/releases.atom',
          checkpoint: 'ad6bb975786516c3fb3c1b27f1bf1873a040f7909593f358dc6e890eb382b1e1'
  name 'Merit'
  homepage 'http://www.merit.me'

  app 'Merit Core.app'
end
