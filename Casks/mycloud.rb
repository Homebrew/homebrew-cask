cask 'mycloud' do
  version :latest
  sha256 :no_check

  # desktop-client-installer-server-mac.prod.mdl.swisscom.ch was verified as official when first introduced to the cask
  url 'https://desktop-client-installer-server-mac.prod.mdl.swisscom.ch/myCloud%20Desktop%20installer.pkg'
  name 'Swisscom myCloud Desktop'
  homepage 'https://desktop.mycloud.ch/'

  # pkg cannot be installed automatically
  installer manual: 'myCloud Desktop installer.pkg'

  uninstall pkgutil:    'com.github.tornaia.desktop-client',
            login_item: 'myCloudDesktop',
            quit:       'ch.swisscom.mycloud.desktop.finder',
            signal:     ['TERM', 'ch.swisscom.mycloud.desktop']

  zap trash: [
               '~/Library/Application Support/myCloudDesktop',
               '~/Library/Preferences/ch.swisscom.mycloud.desktop.plist',
               '~/Library/Preferences/ch.swisscom.mycloud.desktop.helper.plist',
             ]
end
