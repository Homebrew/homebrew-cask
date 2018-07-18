cask 'owncloud' do
  version '2.4.2.10200'
  sha256 '7f3591c001702fed0cf9d16edc66af7944200238fff0400ec99e2cf3a42ef084'

  url "https://download.owncloud.com/desktop/stable/ownCloud-qt5.6.2-#{version}.pkg"
  appcast 'https://github.com/owncloud/client/releases.atom'
  name 'ownCloud'
  homepage 'https://owncloud.com/'

  pkg "ownCloud-#{version}.pkg"

  uninstall pkgutil: [
                       'com.ownCloud.client',
                       'com.owncCloud.finderPlugin',
                     ]
end
