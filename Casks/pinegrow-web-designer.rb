cask 'pinegrow-web-designer' do
  version '2.81'
  sha256 '76d14cc1947d97cfb58f9879956ffc8ee04582fbdff3131a6b11f4dabe7c2e25'

  # pinegrow.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://pinegrow.s3.amazonaws.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow Web Designer'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow Web Designer.app'
end
