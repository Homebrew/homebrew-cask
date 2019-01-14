cask 'ilok-license-manager' do
  version '5.0.1'
  sha256 '738b5e9bd3b009c6affd372aa42189d1f256083a62ee473eaec3c2f19f87c577'

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
