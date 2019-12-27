cask 'exactscan' do
  version '19.12.7'
  sha256 '0b930dd60601ec386ff2ed549c98abd77845738ec2e458ffdb7d3f6259f70f54'

  # dl.exactcode.com was verified as official when first introduced to the cask
  url "https://dl.exactcode.com/exactscan/ExactScan-#{version}.dmg"
  appcast 'https://exactscan.com/download.html'
  name 'ExactScan'
  homepage 'https://exactscan.com/index.html'

  app 'ExactScan.app'
end
