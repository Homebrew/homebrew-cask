cask 'intune-company-portal' do
  version '2.6.200600'
  sha256 'e2ee7fbb0e9c04c126f22c6d30142c6e87506908fb7432f876c01125e28982f1'

  url "https://officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/CompanyPortal_#{version}-Installer.pkg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://go.microsoft.com/fwlink/?linkid=853070'
  name 'Company Portal'
  homepage 'https://docs.microsoft.com/en-us/mem/intune/user-help/enroll-your-device-in-intune-macos-cp'

  auto_updates true
  depends_on macos: '>= :mojave'

  pkg "CompanyPortal_#{version}-Installer.pkg"

  uninstall pkgutil:   [
                         'com.microsoft.package.Microsoft_AutoUpdate.app',
                         'com.microsoft.CompanyPortal',
                       ],
            delete:    [
                         '/Applications/Company Portal.app',
                         '/Library/PrivilegedHelperTools/com.microsoft.autoupdate.helper',
                       ],
            launchctl: [
                         'com.microsoft.autoupdate.helper',
                         'com.microsoft.update.agent',
                       ],
            quit:      [
                         'com.microsoft.autoupdate.fba',
                       ]
end
