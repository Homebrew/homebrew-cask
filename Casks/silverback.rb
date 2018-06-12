cask 'silverback' do
  version '2.6.6'
  sha256 'bee6233d3cc94ccd972b6c29f6777f329a4ac862dda5e699deab525491d82cae'

  # silverback.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://silverback.s3.amazonaws.com/silverback#{version.major}.zip"
  appcast 'https://silverback.s3.amazonaws.com/release/appcast.xml'
  name 'Silverback'
  homepage 'https://silverbackapp.com/'

  app 'Silverback.app'
end
