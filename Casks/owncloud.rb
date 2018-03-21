cask 'owncloud' do
  version '2.4.1.9367'
  sha256 '7f3a88d47cabdecf30681793e16a2f892224fa769d37af0bcd5472b3241b7386'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  appcast 'https://github.com/owncloud/client/releases.atom',
          checkpoint: '168fb7aae936f2b348fba17f2804f0077e123e71399c0e0d133d4372ce7ce575'
  name 'ownCloud'
  homepage 'https://owncloud.com/'

  pkg "ownCloud-#{version}.pkg"

  uninstall pkgutil: [
                       'com.ownCloud.client',
                       'com.owncCloud.finderPlugin',
                     ]
end
