cask "ilok-license-manager" do
  version "5.8.1"
  sha256 :no_check

  url "https://installers.ilok.com/iloklicensemanager/LicenseSupportInstallerMac.zip"
  name "iLok License Manager"
  desc "Software for iLok devices"
  homepage "https://ilok.com/#!license-manager"

  livecheck do
    url "https://updates.ilok.com/iloklicensemanager/LicenseSupportInstallerMacAppcast.xml"
    strategy :sparkle do |item|
      item.short_version.split.first.to_s
    end
  end

  depends_on macos: ">= :sierra"

  pkg "License Support.pkg"

  uninstall pkgutil:   [
              "com.paceap.pkg.eden.iLokLicenseManager",
              "com.paceap.pkg.eden.licensed",
              "com.paceap.pkg.eden.activationexperience",
            ],
            launchctl: [
              "com.paceap.eden.licensed",
              "com.paceap.eden.licensed.agent",
            ],
            delete:    "/usr/local/bin/iloktool"

  zap trash:  [
        "~/Library/Caches/com.paceap.iLokLicenseManager",
        "~/Library/Logs/Eden",
        "~/Library/HTTPStorages/com.paceap.eden.iLokLicenseManager",
        "~/Library/Preferences/com.paceap.iLokLicenseManager.plist",
        "~/Library/Saved Application State/com.paceap.eden.iLokLicenseManager.savedState",
      ],
      delete: [
        "/Library/Preferences/com.paceap.eden.clientdb.*.sdb",
        "/Library/Preferences/com.paceap.eden.floating.*.prefs",
      ]
end
