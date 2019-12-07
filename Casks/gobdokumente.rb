cask 'gobdokumente' do
  version '1.6'
  sha256 'c271b090affa0d002c96704c1303253210d534230ed256521b352d4b7119ffe2'

  # download.moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/GoBDokumente.zip'
  appcast 'https://sparkle.moapp.software/gobdokumente.xml'
  name 'GoBDokumente'
  homepage 'https://gobdokumente.de/'

  app 'GoBDokumente.app'
end
