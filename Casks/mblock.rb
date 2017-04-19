cask 'mblock' do
  version '3.4.6'
  sha256 '9078302780a4203e51a7033307a524ae8411a02cea3f0a118c8f3bdc7ca9e4df'

  # mblock.makeblock.com was verified as official when first introduced to the cask
  url "http://mblock.makeblock.com/mBlock_mac_V#{version}.zip"
  appcast 'http://www.mblock.cc/release-logs',
          checkpoint: 'b93daf44a38ae3b47cdf76d3cee2b004a4fb12fd6dcb1cd9faa86f0e2cd15800'
  name 'mBlock'
  homepage 'http://www.mblock.cc/'

  app "mBlock_v#{version}.app"
end
