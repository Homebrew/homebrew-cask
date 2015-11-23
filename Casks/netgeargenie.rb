cask :v1 => 'netgeargenie' do
  version '2.4.10(2015-10-10_17-15)'
  sha256 '9712d279af351d6b341605062782e1ac6ed881a916ac7aad4ffea2e8c9e9512e'

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
