cask 'jump' do
  version '7.1.4'
  sha256 'daf3191556ffa7af4b50e809a2bc96bcd465aa59c5613381a68b0f13ad9087a8'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml',
          checkpoint: '0e5daaec22be40cc11966ebc9b8d0180d1477129677fdf7bfba93f57c1bb178f'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
