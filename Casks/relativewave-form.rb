cask 'relativewave-form' do
  version '1.4.1'
  sha256 '1a0bcddf6e40e88dc1fb14116c8c76436b0f271263573252c3ca9e5c264907a5'

  # relativewave.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://relativewave.storage.googleapis.com/files/Form-#{version}.dmg"
  name 'RelativeWave Form'
  homepage 'http://www.relativewave.com/form/'

  app 'Form.app'
end
