cask :v1 => 'microsoft-lync' do
  version '14.0.10_141024'
  sha256 'da14ab83303717fdd01d5262be8cf4c83481b3188314d6527540ea3596bc38fe'

  url "http://download.microsoft.com/download/5/0/0/500C7E1F-3235-47D4-BC11-95A71A1BA3ED/lync_#{version}.dmg"
  name 'Microsoft Lync 2011'
  homepage 'http://www.microsoft.com/mac/enterprise/lync'
  license :gratis

  pkg 'Lync Installer.pkg'

  uninstall :pkgutil => 'com.microsoft.lync.all.*'
  zap       :pkgutil => [
                         'com.microsoft.mau.all.autoupdate.*',
                         'com.microsoft.merp.all.errorreporting.*'
                        ],
            :delete  => [
                         '~/Library/Preferences/com.microsoft.Lync.plist',
                         '~/Library/Logs/Microsoft-Lync-0.log',
                         '~/Documents/Microsoft User Data/Microsoft Lync Data'
                        ],
            :rmdir   => '~/Documents/Microsoft User Data'

end
