cask :v1 => 'microsoft-office' do
  version :latest
  sha256 :no_check

  url 'http://officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/Microsoft_Office_2016_Installer.pkg'
  name 'Microsoft Office'
  homepage 'https://www.microsoft.com/mac'
  license :commercial

  depends_on :macos => '>= :yosemite'

  pkg 'Microsoft_Office_2016_Installer.pkg'

  uninstall :pkgutil   => [
                           'com.microsoft.package.*',
                           'com.microsoft.pkg.licensing'
                          ],
            :launchctl => 'com.microsoft.office.licensingV2.helper.plist'
  zap       :pkgutil   => [
                           'com.microsoft.mau.all.autoupdate.*',
                           'com.microsoft.merp.all.errorreporting.*'
                          ],
            :delete    => [
                           '/Library/LaunchDaemons/com.microsoft.office.licensingV2.helper.plist',
                           '/Library/PrivilegedHelperTools/com.microsoft.office.licensingV2.helper',
                          ],
            :rmdir     => [
                           '/Library/Application Support/Microsoft',
                           '~/Library/Application Support/Microsoft',
                           '~/Documents/Microsoft User Data',
                           '~/Library/Containers/com.microsoft.errorreporting',
                           '~/Library/Containers/com.microsoft.Excel',
                           '~/Library/Containers/com.microsoft.netlib.shipassertprocess',
                           '~/Library/Containers/com.microsoft.Office365ServiceV2',
                           '~/Library/Containers/com.microsoft.Outlook',
                           '~/Library/Containers/com.microsoft.Powerpoint',
                           '~/Library/Containers/com.microsoft.RMS-XPCService',
                           '~/Library/Containers/com.microsoft.Word',
                           '~/Library/Containers/com.microsoft.onenote.mac',
                           '~/Library/Group Containers/UBF8T346G9.ms',
                           '~/Library/Group Containers/UBF8T346G9.Office',
                           '~/Library/Group Containers/UBF8T346G9.OfficeOsfWebHost'
                          ]
end
