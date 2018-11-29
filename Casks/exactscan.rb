cask 'exactscan' do
  version '18.11.19'
  sha256 'bed6d6adc41275b83085a054ca280dd5c8bdd3e636a9a586b6987cc0ced37fad'

  # dl.exactcode.com was verified as official when first introduced to the cask
  url "https://dl.exactcode.com/exactscan/ExactScan-#{version}.dmg"
  name 'ExactScan'
  homepage 'https://exactscan.com/index.html'

  app 'ExactScan.app'
end
