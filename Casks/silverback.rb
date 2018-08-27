cask 'silverback' do
  version '3.1.8,237:1516782103'
  sha256 'd4dd7c17a07bfcf7923e905a67eb7895febdf78d3c72ddb5980c59051e3a38f1'

  # dl.devmate.com/uk.co.clearleft.SilverbackMac was verified as official when first introduced to the cask
  url "https://dl.devmate.com/uk.co.clearleft.SilverbackMac/#{version.after_comma.before_colon}/#{version.after_colon}/Silverback-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/uk.co.clearleft.SilverbackMac.xml'
  name 'Silverback'
  homepage 'https://silverbackapp.com/'

  app 'Silverback.app'
end
