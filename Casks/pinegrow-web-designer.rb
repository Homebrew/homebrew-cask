cask 'pinegrow-web-designer' do
  version '2.951'
  sha256 'ebad933a306fcf0b0848ece55950e17653799da49ed01100d5d0e5da2c87f69c'

  # pinegrow.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://pinegrow.s3.amazonaws.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow Web Designer'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow Web Designer.app'
end
