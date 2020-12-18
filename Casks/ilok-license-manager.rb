cask "ilok-license-manager" do
  version "5.3.2"
  sha256 :no_check

  url "https://installers.ilok.com/iloklicensemanager/LicenseSupportInstallerMac.zip"
  appcast "https://updates.ilok.com/iloklicensemanager/LicenseSupportInstallerMacAppcast.xml"
  name "iLok License Manager"
  homepage "https://ilok.com/#!license-manager"

  pkg "License Support.pkg"

  uninstall pkgutil:   [
    "com.paceap.pkg.eden.iLokLicenseManager",
    "com.paceap.pkg.eden.licensed",
    "com.paceap.pkg.eden.activationexperience",
  ],
            launchctl: [
              "com.paceap.eden.licensed",
              "com.paceap.eden.licensed.agent",
            ]
end
