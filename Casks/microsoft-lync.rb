cask 'microsoft-lync' do
  version '14.4.3_170308'
  sha256 '6e980b1eaa85a83d7c7cebbdb1135af82158cae26ae18d0dd171576bd9cc076a'

  url "https://download.microsoft.com/download/5/0/0/500C7E1F-3235-47D4-BC11-95A71A1BA3ED/lync_#{version}.dmg"
  name 'Microsoft Lync 2011'
  homepage 'https://www.microsoft.com/en-us/download/details.aspx?id=36517'

  pkg 'Lync Installer.pkg'

  uninstall pkgutil: 'com.microsoft.lync.all.*'

  zap pkgutil: [
                 'com.microsoft.mau.all.autoupdate.*',
                 'com.microsoft.merp.all.errorreporting.*',
               ],
      trash:   [
                 '~/Library/Preferences/com.microsoft.Lync.plist',
                 '~/Library/Logs/Microsoft-Lync-0.log',
                 '~/Documents/Microsoft User Data/Microsoft Lync Data',
               ],
      rmdir:   '~/Documents/Microsoft User Data'
end
