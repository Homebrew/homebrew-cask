cask 'ilok-license-manager' do
  version '5.0.0'
  sha256 '5a02f57809f46c7c81547e31efe4ff101c87e16e82f402dc63de2bcb04a0bf98'

  url 'https://installers.ilok.com/iloklicensemanager/LicenseSupportInstallerMac.zip'
  appcast 'https://s3.amazonaws.com/sparkleautoupdate-nbuild/ILMAppcast.xml'
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
