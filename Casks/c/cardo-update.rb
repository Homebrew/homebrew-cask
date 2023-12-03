cask "cardo-update" do
  version "4.2.0"
  sha256 :no_check

  url "https://update.cardosystems.com/cardo-app/cardo_updater_macOS_latest.pkg"
  name "Cardo Update"
  desc "Update Packtalk and Freecom motorcycle intercoms"
  homepage "https://www.cardosystems.com/download-cardo-updater/"

  livecheck do
    url "https://update.cardosystems.com/cardo-app/latest-mac.yml"
    strategy :electron_builder
  end

  pkg "cardo_updater_macOS_latest.pkg"

  uninstall quit:    "com.cardo.fwupdater",
            pkgutil: "com.cardo.fwupdater"

  zap trash: [
    "~/Library/Application Support/Cardo Update",
  ]

  caveats do
    requires_rosetta
  end
end
