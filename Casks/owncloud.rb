cask 'owncloud' do
  version '2.2.1.3427'
  sha256 'a16886fd3cac931ebf3caa3a48397bae1e56352560c24e4993e708886e805f44'

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
