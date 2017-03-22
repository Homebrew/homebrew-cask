cask 'owncloud' do
  version '2.3.0.4097'
  sha256 '3846a6b3e639ff4f6842e25623d2a7d74c53acba6c2bc6eb00dc349b8d6361d2'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  appcast 'https://github.com/owncloud/client/releases.atom',
          checkpoint: '9f171a967f4ff581d7f275a225dbb27fb9db9f2547b92d7e35c5621b45e895f0'
  name 'ownCloud'
  homepage 'https://owncloud.com/'

  pkg "ownCloud-#{version}.pkg"

  uninstall pkgutil: [
                       'com.ownCloud.client',
                       'com.owncCloud.finderPlugin',
                     ]
end
