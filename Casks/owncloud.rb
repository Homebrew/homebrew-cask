cask 'owncloud' do
  version '2.4.2.10200,qt5.6.2'
  sha256 '7f3591c001702fed0cf9d16edc66af7944200238fff0400ec99e2cf3a42ef084'

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
