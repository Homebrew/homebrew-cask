cask 'jump' do
  version '7.1.2'
  sha256 '9a96dd38636b9dff24e46e413556a0067ea93e5581d1f094a70f0cfeed7bef32'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml',
          checkpoint: 'be327d110a622fd519c08f8dac9121d80674ea2c72e8d251c7d934ad9fd38765'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
