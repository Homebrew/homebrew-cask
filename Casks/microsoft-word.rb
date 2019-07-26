cask 'microsoft-word' do
  version '16.27.19071500'
  sha256 '6e6e87f28b5ff4b53d6fe3c021a5516f4b709bfb05e67ffab99751cc41ba5777'

  # officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate was verified as official when first introduced to the cask
  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Word_#{version}_Installer.pkg"
  appcast 'https://docs.microsoft.com/en-us/officeupdates/update-history-office-for-mac'
  name 'Microsoft Word'
  homepage 'https://products.office.com/mac/microsoft-office-for-mac/'

  auto_updates true
  depends_on macos: '>= :sierra'

  pkg "Microsoft_Word_#{version}_Installer.pkg"

  uninstall pkgutil:   [
                         'com.microsoft.package.Microsoft_Word.app',
                         'com.microsoft.OneDrive',
                         'com.microsoft.package.DFonts',
                         'com.microsoft.package.Microsoft_AutoUpdate.app',
                         'com.microsoft.pkg.licensing',
                       ],
            launchctl: [
                         'com.microsoft.office.licensing.helper',
                         'com.microsoft.office.licensingV2.helper',
                       ]
end
