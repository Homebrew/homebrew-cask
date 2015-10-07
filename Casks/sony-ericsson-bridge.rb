cask :v1 => 'sony-ericsson-bridge' do
  version :latest
  sha256 :no_check

  url 'http://www-support-downloads.sonymobile.com/Software%20Downloads/Bridge%20for%20Mac/SonyBridgeForMac_web.dmg'
  name 'Sony Ericsson Bridge for Mac'
  appcast 'http://dl-desktop-macapps.sonyericsson.com/production/Bridge/Databases_Prod/appcast.xml',
          :sha256 => '587fcb7bd8156d41bfb2061b958d40bb84e7e47cc157426cd9dba4142e2fe05c'
  homepage 'http://support.sonymobile.com/au/tools/bridge-for-mac/'
  license :gratis
  tags :vendor => 'Sony'

  app 'Sony Ericsson Bridge for Mac.app'
end
