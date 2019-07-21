cask 'exactscan' do
  version '19.4.24'
  sha256 '2249b3cfa5e19267efb2c91faa4e431d68e4d04852611a9edcf60d081a046fcf'

  # dl.exactcode.com was verified as official when first introduced to the cask
  url "https://dl.exactcode.com/exactscan/ExactScan-#{version}.dmg"
  appcast 'https://exactscan.com/download.html'
  name 'ExactScan'
  homepage 'https://exactscan.com/index.html'

  app 'ExactScan.app'
end
