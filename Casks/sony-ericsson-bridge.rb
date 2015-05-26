cask :v1 => 'sony-ericsson-bridge' do
  version :latest
  sha256 :no_check

  url 'http://www-support-downloads.sonymobile.com/Software%20Downloads/Bridge%20for%20Mac/SonyBridgeForMac_web.dmg'
  name 'Sony Ericsson Bridge for Mac'
  homepage 'http://support.sonymobile.com/au/tools/bridge-for-mac/'
  license :gratis
  tags :vendor => 'Sony'

  app 'Sony Ericsson Bridge for Mac.app'
end
