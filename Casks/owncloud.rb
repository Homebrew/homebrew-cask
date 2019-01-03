cask 'owncloud' do
  version '2.5.1.10818'
  sha256 'ebc936a14bd53946c6e75b2f606424c926bfe08b500b9475f97203f26b4eec34'

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
