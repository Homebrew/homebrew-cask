cask 'owncloud' do
  version '2.6.0.12703'
  sha256 '7cb999a980be2b29dd586c803fab094a6fff0a06fcf21d53b8b204537bb8f1b5'

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
