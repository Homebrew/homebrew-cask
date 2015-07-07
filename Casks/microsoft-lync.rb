cask :v1 => 'microsoft-lync' do
  version '14.0.11_150403'
  sha256 '450a8bbfc32b1b7415aef8c8984abe44e7f9832c9b7700fb9d8f8c4b44de9d26'

  url "http://download.microsoft.com/download/5/0/0/500C7E1F-3235-47D4-BC11-95A71A1BA3ED/lync_#{version}.dmg"
  name 'Microsoft Lync 2011'
  homepage 'https://www.microsoft.com/mac/enterprise/lync'
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
