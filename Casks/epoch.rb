cask 'epoch' do
  version '2.2.0'
  sha256 'f0a12de2326064a60f2532e220c7055b4cfa308b9454a0839ed392371e7f927f'

  # amazonaws.com/adcade-downloads was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/adcade-downloads/epoch2/Epoch_#{version}_osx64.dmg"
  name 'Epoch'
  homepage 'https://www.adcade.com/'
  license :commercial

  app 'Epoch.app'
end
