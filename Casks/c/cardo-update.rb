cask "cardo-update" do
  version :latest
  sha256 "261dcca0337d5a97230290267f8285a9a7b02b87f59ab7336c3b1a04fd6f1a1f"

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
