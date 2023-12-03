cask "cardo-update" do
  version :latest
  sha256 :no_check

  url "https://update.cardosystems.com/cardo-app/cardo_updater_macOS_latest.pkg"
  name "Cardo Update - firmware update tool for PACKTALK and FREECOM unit lines"
  desc "Software to update Packtalk and Freecom motorcycle intercom's"
  homepage "https://www.cardosystems.com/download-cardo-updater/"

  pkg "cardo_updater_macOS_latest.pkg"

  uninstall quit:    "com.cardo.fwupdater",
            pkgutil: "com.cardo.fwupdater"

  zap rmdir: [
    "~/Library/Application Support/Cardo Update",
  ]
end
