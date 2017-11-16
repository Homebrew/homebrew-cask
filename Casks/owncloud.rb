cask 'owncloud' do
  version '2.3.4.8537'
  sha256 '04a48607fb2ecbbc88b00ebf00b74875ad3dc53b104a6749d0f865f038737255'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  appcast 'https://github.com/owncloud/client/releases.atom',
          checkpoint: 'b6b882ce94c26e285527e49f02c3e9ea91d37bb6276e95d8c513224f052564cf'
  name 'ownCloud'
  homepage 'https://owncloud.com/'

  pkg "ownCloud-#{version}.pkg"

  uninstall pkgutil: [
                       'com.ownCloud.client',
                       'com.owncCloud.finderPlugin',
                     ]
end
