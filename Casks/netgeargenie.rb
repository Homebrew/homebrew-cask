cask 'netgeargenie' do
  version '2.4.22(2017-1-17)'
  sha256 'fddb83c7f8ccb6b46a7768acbd260f631c2913440b725e5db39f7e8041e54907'

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
