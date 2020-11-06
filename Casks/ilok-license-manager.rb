cask "ilok-license-manager" do
  version "5.3.1"
  sha256 "a0c0bf963e14cd3431e0409d2c7edb94cc712b2f32ebb0a35e27779cc031c087"

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
