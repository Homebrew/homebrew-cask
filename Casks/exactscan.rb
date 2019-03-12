cask 'exactscan' do
  version '18.12.24'
  sha256 '490ebcf48b34b17eadfeb688e6a1fceaef2b87384a1fce9e91b3356591e2d69f'

  # dl.exactcode.com was verified as official when first introduced to the cask
  url "https://dl.exactcode.com/exactscan/ExactScan-#{version}.dmg"
  appcast 'https://exactscan.com/download.html'
  name 'ExactScan'
  homepage 'https://exactscan.com/index.html'

  app 'ExactScan.app'
end
