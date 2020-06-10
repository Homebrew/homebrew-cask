cask 'owncloud' do
  version '2.6.1.13096'
  sha256 'de8e9b045c10e11e6e9b5954a359e3565d5026851b4f3ffb84c05b967b3eaf33'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  appcast 'https://github.com/owncloud/client/releases.atom'
  name 'ownCloud'
  homepage 'https://owncloud.com/'

  depends_on macos: '>= :sierra'

  pkg "ownCloud-#{version}.pkg"

  uninstall pkgutil: [
                       'com.ownCloud.client',
                       'com.owncCloud.finderPlugin',
                     ]

  zap trash: [
               '~/Library/Group Containers/9B5WD74GWJ.com.owncloud.desktopclient',
               '~/Library/Caches/com.owncloud.desktopclient',
               '~/Library/Application Scripts/com.owncloud.desktopclient.FinderSyncExt',
               '~/Library/Containers/com.owncloud.desktopclient.FinderSyncExt',
               '~/Library/Preferences/com.owncloud.desktopclient.plist',
               '~/Library/Application Support/ownCloud',
               '~/Library/Preferences/ownCloud',
             ]
end
