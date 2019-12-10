cask 'exactscan' do
  version '19.11.22'
  sha256 'c85633b571c1cfcdde1ac45d93385b436977d08819e87b33645ea06c2730607d'

  # dl.exactcode.com was verified as official when first introduced to the cask
  url "https://dl.exactcode.com/exactscan/ExactScan-#{version}.dmg"
  appcast 'https://exactscan.com/download.html'
  name 'ExactScan'
  homepage 'https://exactscan.com/index.html'

  app 'ExactScan.app'
end
