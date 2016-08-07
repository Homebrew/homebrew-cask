cask 'ilok-license-manager' do
  version '3.0.2_r33217'
  sha256 '7dc4b7abdb5ee5cbcd0ff7cc42add6efbdce12253fabc4d12a9215072306a9de'

  url 'http://installers.ilok.com/iloklicensemanager/LicenseSupportInstallerMac.zip'
  name 'iLok License Manager'
  homepage 'https://ilok.com/#!license-manager'
  license :gratis

  pkg 'License Support.pkg'

  uninstall pkgutil:   [
                         'com.paceap.pkg.eden.iLokLicenseManager',
                         'com.paceap.pkg.eden.licensed',
                         'com.paceap.pkg.eden.activationexperience',
                       ],
            launchctl: 'com.paceap.eden.licensed'
end
