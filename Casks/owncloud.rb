cask 'owncloud' do
  version '2.2.4.3709'
  sha256 'da05a0294754c2a6a45662f765d9352114980d108f34ceac7f7eee6202c4d65e'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  name 'ownCloud'
  homepage 'https://owncloud.com/'
  license :gpl

  pkg "ownCloud-#{version}.pkg"

  uninstall pkgutil: [
                       'com.ownCloud.client',
                       'com.owncCloud.finderPlugin',
                     ]
end
