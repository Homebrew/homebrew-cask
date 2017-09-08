cask 'owncloud' do
  version '2.3.3.8242'
  sha256 '61536572d1dbc627677e373e69a5a01a785d099ddacf25f50a42b05699c52388'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  appcast 'https://github.com/owncloud/client/releases.atom',
          checkpoint: '24cdfdc52c2ae6ec670cfbfaed696257aafca1b2228ddbd0cb069ab56eecc16c'
  name 'ownCloud'
  homepage 'https://owncloud.com/'

  pkg "ownCloud-#{version}.pkg"

  uninstall pkgutil: [
                       'com.ownCloud.client',
                       'com.owncCloud.finderPlugin',
                     ]
end
