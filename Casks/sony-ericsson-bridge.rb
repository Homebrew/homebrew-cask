cask 'sony-ericsson-bridge' do
  version '4.3'
  sha256 '90a1a352febb48e0673e412140be9bc681d348a77a73acab102f0036ed61ab1a'

  url 'https://www-support-downloads.sonymobile.com/Software%20Downloads/Bridge%20for%20Mac/SonyBridgeForMac_web.dmg'
  appcast 'https://dl-desktop-macapps.sonyericsson.com/production/Bridge/Databases_Prod/appcast.xml',
          :sha256 => '818b435f630092d977cf4a9062c1d1770fbe1f4863ecff6fda91c87b918bcbd0'
  name 'Sony Ericsson Bridge for Mac'
  homepage 'https://support.sonymobile.com/au/tools/bridge-for-mac/'
  license :gratis

  app 'Sony Ericsson Bridge for Mac.app'
end
