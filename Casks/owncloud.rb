cask 'owncloud' do
  version '2.3.1.4139'
  sha256 '4c1ccf26af4d66700cb2e13d032da108c741682906a5f472f3d3fd8148963e7a'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  appcast 'https://github.com/owncloud/client/releases.atom',
          checkpoint: 'f4efb635c2dd629d6745eda090ed91989b2474af6b135e60d5c702e216dc6645'
  name 'ownCloud'
  homepage 'https://owncloud.com/'

  pkg "ownCloud-#{version}.pkg"

  uninstall pkgutil: [
                       'com.ownCloud.client',
                       'com.owncCloud.finderPlugin',
                     ]
end
