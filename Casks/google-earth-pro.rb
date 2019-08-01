cask 'google-earth-pro' do
  version '7.3.2.5776'
  sha256 'e84a9e1421f1e1200e7cd7fa1aa811caacab59216f73287293c3ba643c438060'

  url 'https://dl.google.com/earth/client/advanced/current/GoogleEarthProMac-Intel.dmg'
  name 'Google Earth Pro'
  homepage 'https://www.google.com/earth/'

  pkg "Install Google Earth Pro #{version}.pkg"

  uninstall pkgutil:   [
                         'com.Google.GoogleEarthPro',
                         'com.google.pkg.Keystone',
                       ],
            launchctl: [
                         'com.google.keystone.agent',
                         'com.google.keystone.system.agent',
                         'com.google.keystone.daemon',
                       ]

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.googleearthpro.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.googleearthupdatehelper.sfl*',
               '~/Library/Application Support/Google Earth',
               '~/Library/Caches/Google Earth',
               '~/Library/Caches/com.Google.GoogleEarthPro',
             ]
end
