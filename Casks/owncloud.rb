cask 'owncloud' do
  version '2.2.0.3358'
  sha256 '29abee999109460ce0c8f015419fa98134fbdcbe7d7570105078b14b1b1fa1f0'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  name 'ownCloud'
  homepage 'https://owncloud.com/'
  license :gpl

  pkg "ownCloud-#{version}.pkg"

  uninstall pkgutil: [
                       'com.ownCloud.client',
                       'com.owncCloud.finderPlugin',
                     ]
end
