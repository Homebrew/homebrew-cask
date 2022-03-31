cask "ilok-license-manager" do
  version "5.5.1,4219"
  sha256 :no_check

  url "https://installers.ilok.com/iloklicensemanager/LicenseSupportInstallerMac.zip"
  name "iLok License Manager"
  desc "Software for iLok devices"
  homepage "https://ilok.com/#!license-manager"

  livecheck do
    url "https://updates.ilok.com/iloklicensemanager/LicenseSupportInstallerMacAppcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version.split.first},#{item.version}"
    end
  end

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
