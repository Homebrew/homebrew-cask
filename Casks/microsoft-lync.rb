cask 'microsoft-lync' do
  version '14.4.1_160608'
  sha256 '8aa4dd7d17d82f454b78da41c7be9344b49d9b9e8734094fc61faf362bc89291'

  url "https://download.microsoft.com/download/5/0/0/500C7E1F-3235-47D4-BC11-95A71A1BA3ED/lync_#{version}.dmg"
  name 'Microsoft Lync 2011'
  homepage 'https://www.microsoft.com/en-us/download/details.aspx?id=36517'

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
