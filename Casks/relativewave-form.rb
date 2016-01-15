cask 'relativewave-form' do
  version '1.4.0'
  sha256 '9369d1e468938da60fffa890b5c8d4ec2888dcde990b2d2763fb56bbae1825af'

  # googleapis.com is the official download host per the vendor homepage
  url "https://relativewave.storage.googleapis.com/files/Form-#{version}.dmg"
  name 'RelativeWave Form'
  homepage 'http://www.relativewave.com/form/'
  license :gratis

  app 'Form.app'
end
