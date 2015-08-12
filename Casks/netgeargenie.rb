cask :v1 => 'netgeargenie' do
  version '2.4.6(2015-7-14_13-30)'
  sha256 '15ef4128ae36f89edb0f0b382d3dbc75eb654bff2949253432eb29d290172678'

  url 'http://updates1.netgear.com/netgeargenie/mac/update/NETGEARGenieInstaller.dmg'
  name 'NETGEARGenie'
  homepage 'https://www.netgear.com/home/discover/apps/genie.aspx'
  license :gratis

  pkg "NETGEAR_Genie_Installer_#{version}.pkg"

  uninstall :quit    => 'com.yourcompany.NETGEARGenie',
            :pkgutil => 'com.netgear.netgearGenie.NETGEARGenie.pkg'

  zap       :delete  => [
                         '~/Library/Application Support/NETGEARGenie',
                         '~/Library/Saved Application State/com.yourcompany.NETGEARGenie.savedState'
                        ]
end
