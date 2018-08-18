cask 'owncloud' do
  version '2.4.3.10347,qt5.6.2'
  sha256 '066820e2e6aac1bb9beac7dc7d7003f4b092cb62a6747b97881cb5922c12382d'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version.after_comma}-#{version.before_comma}.pkg"
  appcast 'https://github.com/owncloud/client/releases.atom'
  name 'ownCloud'
  homepage 'https://owncloud.com/'

  pkg "ownCloud-#{version.after_comma}-#{version.before_comma}.pkg"

  uninstall pkgutil: [
                       'com.ownCloud.client',
                       'com.owncCloud.finderPlugin',
                     ]
end
