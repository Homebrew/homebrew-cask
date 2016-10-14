cask 'owncloud' do
  version '2.2.4.3709'
  sha256 'da05a0294754c2a6a45662f765d9352114980d108f34ceac7f7eee6202c4d65e'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  appcast 'https://github.com/owncloud/client/releases.atom',
          checkpoint: 'c38f3b861f837704752d7fca3ad7de32be66a211aba6159944344997aa07b8df'
  name 'ownCloud'
  homepage 'https://owncloud.com/'

  pkg "ownCloud-#{version}.pkg"

  uninstall pkgutil: [
                       'com.ownCloud.client',
                       'com.owncCloud.finderPlugin',
                     ]
end
