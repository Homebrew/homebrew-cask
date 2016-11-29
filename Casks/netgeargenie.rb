cask 'netgeargenie' do
  version '2.4.12(2016-3-10_17_30)'
  sha256 '077b63dd33ba4c2a992e307e5e6dbdcf048a59b259964c6b2fba0bd4f4264d6f'

  url 'http://updates1.netgear.com/netgeargenie/mac/update/NETGEARGenieInstaller.dmg'
  name 'NETGEARGenie'
  homepage 'https://www.netgear.com/home/discover/apps/genie.aspx'

  pkg "NETGEAR_Genie_Installer_#{version}.pkg"

  uninstall quit:    'com.yourcompany.NETGEARGenie',
            pkgutil: 'com.netgear.netgearGenie.NETGEARGenie.pkg'

  zap       delete: [
                      '~/Library/Application Support/NETGEARGenie',
                      '~/Library/Saved Application State/com.yourcompany.NETGEARGenie.savedState',
                    ]
end
