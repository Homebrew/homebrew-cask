cask 'ilok-license-manager' do
  version '5.1.0'
  sha256 '2e5ccd1a8d3464546a70b2e6f618fe7fcd45c048ac4d81378c50c92401266f75'

  url 'https://installers.ilok.com/iloklicensemanager/LicenseSupportInstallerMac.zip'
  appcast 'https://updates.ilok.com/iloklicensemanager/LicenseSupportInstallerMacAppcast.xml'
  name 'iLok License Manager'
  homepage 'https://ilok.com/#!license-manager'

  pkg 'License Support.pkg'

  uninstall pkgutil:   [
                         'com.paceap.pkg.eden.iLokLicenseManager',
                         'com.paceap.pkg.eden.licensed',
                         'com.paceap.pkg.eden.activationexperience',
                       ],
            launchctl: [
                         'com.paceap.eden.licensed',
                         'com.paceap.eden.licensed.agent',
                       ]
end
