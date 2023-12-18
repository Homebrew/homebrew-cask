cask "cardo-update" do
  version "4.2.0"
  sha256 "4e8698968179412beae7caeb08b5c70190ba912e994d3ce42b5e1c18d67cbca3"

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
