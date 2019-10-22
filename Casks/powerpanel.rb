cask 'powerpanel' do
  version '1.1.0'
  sha256 '9ef3160ad516cf246647a11bdbeaa756a98b2c0d9915ccabbf0d6cc72bebdf51'

  # dl4jz3rbrsfum.cloudfront.net was verified as official when first introduced to the cask
  url "https://dl4jz3rbrsfum.cloudfront.net/software/ppm#{version.no_dots}.dmg"
  name 'CyberPower PowerPanel Personal'
  homepage 'https://www.cyberpowersystems.com/products/software/power-panel-personal/'

  depends_on macos: '>= :sierra'

  app 'PowerPanel.app'

  uninstall pkgutil:   'com.cpsww.ppupsd',
            launchctl: 'com.cpsww.ppupsd'
end
