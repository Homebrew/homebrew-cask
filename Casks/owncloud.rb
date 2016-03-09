cask 'owncloud' do
  version '2.1.1.3107'
  sha256 '259d72bbe7203745313aed9bf67fa2f188f75131c4f16262b657fbb600e57310'

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
