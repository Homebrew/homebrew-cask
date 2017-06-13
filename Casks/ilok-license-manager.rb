cask 'ilok-license-manager' do
  version :latest
  sha256 :no_check

  url 'http://installers.ilok.com/iloklicensemanager/LicenseSupportInstallerMac.zip'
  name 'iLok License Manager'
  homepage 'https://ilok.com/#!license-manager'

  pkg 'License Support.pkg'

  uninstall pkgutil:   [
                         'com.paceap.pkg.eden.iLokLicenseManager',
                         'com.paceap.pkg.eden.licensed',
                         'com.paceap.pkg.eden.activationexperience',
                       ],
            launchctl: 'com.paceap.eden.licensed'
end
