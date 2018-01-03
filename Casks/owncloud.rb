cask 'owncloud' do
  version '2.4.0.8836'
  sha256 'fd302cacdd6a66de01c706ad351a92957c79769d5a4a16babf5feda4f97699d0'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  appcast 'https://github.com/owncloud/client/releases.atom',
          checkpoint: '774c47e34cfe57ad923f30c7f914c8efe726a3fe982f70d3897eff1f24937cee'
  name 'ownCloud'
  homepage 'https://owncloud.com/'

  pkg "ownCloud-#{version}.pkg"

  uninstall pkgutil: [
                       'com.ownCloud.client',
                       'com.owncCloud.finderPlugin',
                     ]
end
