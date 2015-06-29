cask :v1 => 'netgeargenie' do
  version '2.3.1.12(2014-11-27_11-00)'
  sha256 'fd3fea9f6f71819797133a16cd55412df979d5275c963b76392de66c1bb6a895'

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
