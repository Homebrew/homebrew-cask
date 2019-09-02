cask 'owncloud' do
  version '2.5.4.11456'
  sha256 '29c39b71517de9ddce98557be998720dd63b9bcac7c685376ca46ccd2b603e80'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  appcast 'https://github.com/owncloud/client/releases.atom'
  name 'ownCloud'
  homepage 'https://owncloud.com/'

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
