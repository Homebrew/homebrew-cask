cask 'owncloud' do
  version '2.3.2.4250'
  sha256 'eba3ce722fe30a3bd81cbab5c157e7a3f8e6dfee6d43a374372ffb72a0153b1e'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  appcast 'https://github.com/owncloud/client/releases.atom',
          checkpoint: 'df22e9b31df852b4f1347603abc3832cb8f5a807223f2d2eee240c34d3dfa884'
  name 'ownCloud'
  homepage 'https://owncloud.com/'

  pkg "ownCloud-#{version}.pkg"

  uninstall pkgutil: [
                       'com.ownCloud.client',
                       'com.owncCloud.finderPlugin',
                     ]
end
