cask 'mycloud' do
  version '17.43.26'
  sha256 '3d30ee7389686fce876949f7214881cceeb044f6ca0212021f5c06a83b969bd3'

  # download-syncclient-mac.prod.mdl.swisscom.ch was verified as official when first introduced to the cask
  url "https://download-syncclient-mac.prod.mdl.swisscom.ch/mac/myCloudDesktop-installer-#{version}.dmg"
  name 'Swisscom myCloud Desktop'
  homepage 'https://desktop.mycloud.ch/'

  container nested: 'myCloudDesktop-installer.app/Contents/Resources/app/application.zip'

  app 'myCloudDesktop.app'

  uninstall login_item: 'myCloudDesktop',
            quit:       'ch.swisscom.mycloud.desktop.finder',
            signal:     ['TERM', 'ch.swisscom.mycloud.desktop']

  zap trash: [
               '~/Library/Application Support/myCloudDesktop',
               '~/Library/Preferences/ch.swisscom.mycloud.desktop.plist',
               '~/Library/Preferences/ch.swisscom.mycloud.desktop.helper.plist',
             ]
end
