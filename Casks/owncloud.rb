cask 'owncloud' do
  version '2.2.3.3601'
  sha256 '43c2b75b041b7000fdd12aafdacfcfe51e5b9615600351b934e55ec45f0b8748'

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
