cask "cardo-update" do
  version "4.5.0"
  sha256 "196251e40a151f0cfece2032731bf42d12ee9200d7b69f001f0a078e43f94156"

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
