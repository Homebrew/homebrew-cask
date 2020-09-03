cask "ilok-license-manager" do
  version "5.3.0"
  sha256 "ce0bb98bda001a8a194381c8ad5bae3090b4ca45936ab6e43cb5b010b9db47c1"

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
