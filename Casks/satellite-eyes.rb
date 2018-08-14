cask 'satellite-eyes' do
  version '1.4.2'
  sha256 'aab5f1d05ff9a96b33407f85075373569b90f425dee948986cb245fcc5d4373f'

  # satellite-eyes.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://satellite-eyes.s3.amazonaws.com/satellite-eyes-#{version}.zip"
  appcast 'https://satellite-eyes.s3.amazonaws.com/appcast.xml'
  name 'Satellite Eyes'
  homepage 'http://satelliteeyes.tomtaylor.co.uk/'

  app 'Satellite Eyes.app'
end
