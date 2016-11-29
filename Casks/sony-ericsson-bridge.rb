cask 'sony-ericsson-bridge' do
  version '4.4'
  sha256 '6ec2f2ac9ce4f8f0d66f4a19ab180fc55b748b26e5f6d9d3e62abec07275e67e'

  url 'https://www-support-downloads.sonymobile.com/Software%20Downloads/Bridge%20for%20Mac/SonyBridgeForMac_web.dmg'
  appcast 'https://dl-desktop-macapps.sonyericsson.com/production/Bridge/Databases_Prod/appcast.xml',
          checkpoint: '19afba9490a22b44de4cf61bfc08b98aeec6dbb8cf1be89456ae03e0ddf90782'
  name 'Sony Ericsson Bridge for Mac'
  homepage 'https://support.sonymobile.com/au/tools/bridge-for-mac/'

  app 'Sony Ericsson Bridge for Mac.app'
end
