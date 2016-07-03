cask 'owncloud' do
  version '2.2.2.3472'
  sha256 'ed0119b387ec5dcd1af11a11d6edb5947135043f76b9044c53f6a948f440ed65'

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
