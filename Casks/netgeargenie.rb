cask 'netgeargenie' do
  version '2.4.20(2016-11-8)'
  sha256 '00efb8001677e4c0e63de0c8fefa48181ca11afd34f60d0c22de14c9f5c6e6c3'

  url 'http://updates1.netgear.com/netgeargenie/mac/update/NETGEARGenieInstaller.dmg'
  name 'NETGEARGenie'
  homepage 'https://www.netgear.com/home/discover/apps/genie.aspx'

  pkg "NETGEAR_Genie_Installer_#{version}.pkg"

  uninstall quit:    'com.yourcompany.NETGEARGenie',
            pkgutil: 'com.netgear.netgearGenie.NETGEARGenie.pkg'

  zap       delete: [
                      '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.yourcompany.netgeargenie.sfl',
                      '~/Library/Application Support/NETGEARGenie',
                      '~/Library/Saved Application State/com.yourcompany.NETGEARGenie.savedState',
                    ]
end
