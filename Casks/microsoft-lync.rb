cask 'microsoft-lync' do
  version '14.2.1_150923'
  sha256 'da1264855e3a7b372639862ed1b35a8e03c49ee5f26a440ac74daced5a743449'

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
