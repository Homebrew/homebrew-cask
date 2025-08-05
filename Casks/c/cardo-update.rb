cask "cardo-update" do
  version "4.6.0"
  sha256 "40c60004d3c322d264a11ff0ff881aeddfbbf5dd44b98b0b28cf14d3432436c1"

  url "https://update.cardosystems.com/cardo-app/Cardo%20Update-#{version}-mac.zip"
  name "Cardo Update"
  desc "Update Packtalk and Freecom motorcycle intercoms"
  homepage "https://www.cardosystems.com/download-cardo-updater/"

  livecheck do
    url "https://update.cardosystems.com/cardo-app/latest-mac.yml"
    strategy :electron_builder
  end

  app "Cardo Update.app"

  zap trash: [
    "~/Library/Application Support/Cardo Update",
    "~/Library/Logs/Cardo Update",
    "~/Library/Preferences/com.cardo.fwupdater.plist",
  ]

  caveats do
    requires_rosetta
  end
end
