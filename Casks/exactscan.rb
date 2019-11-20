cask 'exactscan' do
  version '19.11.12'
  sha256 '77390ef59cf348b914c1363cefeb957d25fad1e0d3912e1d80c743a0b83b5d16'

  # dl.exactcode.com was verified as official when first introduced to the cask
  url "https://dl.exactcode.com/exactscan/ExactScan-#{version}.dmg"
  appcast 'https://exactscan.com/download.html'
  name 'ExactScan'
  homepage 'https://exactscan.com/index.html'

  app 'ExactScan.app'
end
