cask 'relativewave-form' do
  version '1.4.0'
  sha256 '9369d1e468938da60fffa890b5c8d4ec2888dcde990b2d2763fb56bbae1825af'

  # relativewave.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://relativewave.storage.googleapis.com/files/Form-#{version}.dmg"
  name 'RelativeWave Form'
  homepage 'http://www.relativewave.com/form/'

  app 'Form.app'
end
