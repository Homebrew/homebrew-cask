cask 'sony-ericsson-bridge' do
  version :latest
  sha256 :no_check

  url 'https://www-support-downloads.sonymobile.com/Software%20Downloads/Bridge%20for%20Mac/SonyBridgeForMac_web.dmg'
  appcast 'https://dl-desktop-macapps.sonyericsson.com/production/Bridge/Databases_Prod/appcast.xml',
          :sha256 => '0e516c239fff99ac24ec531546195ba185675bd890a0a09599e6f3fb5cd30fba'
  name 'Sony Ericsson Bridge for Mac'
  homepage 'https://support.sonymobile.com/au/tools/bridge-for-mac/'
  license :gratis

  app 'Sony Ericsson Bridge for Mac.app'
end
