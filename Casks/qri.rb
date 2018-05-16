cask 'qri' do
  version '0.0.2'
  sha256 '5fadecb8f8af4cf5709630fee358ccabde46c5c887eaadaac8caa77d6e0317ed'

  # github.com/qri-io/frontend was verified as official when first introduced to the cask
  url 'https://github.com/qri-io/frontend/releases/download/v0.0.2/qri-0.0.2.dmg'
  name 'qri'
  homepage 'https://qri.io/'

  app 'qri.app'
end
