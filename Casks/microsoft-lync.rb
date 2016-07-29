cask 'microsoft-lync' do
  version '14.3.3_160216'
  sha256 '1ba21101c1ba318608f75cfc312ad3886ceb6a82102144678a2f195c49eed11d'

  url "https://download.microsoft.com/download/5/0/0/500C7E1F-3235-47D4-BC11-95A71A1BA3ED/lync_#{version}.dmg"
  name 'Microsoft Lync 2011'
  homepage 'https://www.microsoft.com/en-us/download/details.aspx?id=36517'
  license :gratis

  pkg 'Lync Installer.pkg'

  uninstall pkgutil: 'com.microsoft.lync.all.*'

  zap       pkgutil: [
                       'com.microsoft.mau.all.autoupdate.*',
                       'com.microsoft.merp.all.errorreporting.*',
                     ],
            delete:  [
                       '~/Library/Preferences/com.microsoft.Lync.plist',
                       '~/Library/Logs/Microsoft-Lync-0.log',
                       '~/Documents/Microsoft User Data/Microsoft Lync Data',
                     ],
            rmdir:   '~/Documents/Microsoft User Data'
end
