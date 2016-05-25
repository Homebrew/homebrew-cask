cask 'ilok-license-manager' do
  version '3.0.2_r33217'
  sha256 '79a2d57359a117887af50356d6c10ace6d0889aa27865bf0ffe5728ea2f059e6'

  url 'http://installers.ilok.com/iloklicensemanager/LicenseSupportInstallerMac.zip'
  name 'iLok License Manager'
  homepage 'https://ilok.com/#!license-manager'
  license :gratis

  container nested: "LicenseSupportInstallerMac_v#{version}.dmg"

  pkg 'License Support.pkg'

  uninstall pkgutil:   [
                         'com.paceap.pkg.eden.iLokLicenseManager',
                         'com.paceap.pkg.eden.licensed',
                         'com.paceap.pkg.eden.activationexperience',
                       ],
            launchctl: 'com.paceap.eden.licensed'
end
