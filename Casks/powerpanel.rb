cask 'powerpanel' do
  if MacOS.version <= :sierra
    version '1.0.9'
    sha256 '7b021f9cf182afd04fa25522cee115b271e462f73fa9c76571681e6b4ebda36d'
  else
    version '1.1.0'
    sha256 '9ef3160ad516cf246647a11bdbeaa756a98b2c0d9915ccabbf0d6cc72bebdf51'
  end

  # dl4jz3rbrsfum.cloudfront.net was verified as official when first introduced to the cask
  url "https://dl4jz3rbrsfum.cloudfront.net/software/ppm#{version.no_dots}.dmg"
  name 'CyberPower PowerPanel Personal'
  name 'PowerPanel'
  homepage 'https://www.cyberpowersystems.com/products/software/power-panel-personal/'

  depends_on macos: '>= :el_capitan'

  app 'PowerPanel.app'

  uninstall pkgutil:   'com.cpsww.ppupsd',
            launchctl: 'com.cpsww.ppupsd'
end
