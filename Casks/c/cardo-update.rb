cask "cardo-update" do
  version "4.8.0"
  sha256 "131fb5f2c38493b5ba34409df6943e0495474b2eb5c6ac4c3df0803e2dfcf264"

  url "https://update.cardosystems.com/cardo-app/Cardo%20Update-#{version}-mac.zip"
  name "Cardo Update"
  desc "Update Packtalk and Freecom motorcycle intercoms"
  homepage "https://www.cardosystems.com/download-cardo-updater/"

  livecheck do
    url "https://update.cardosystems.com/cardo-app/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

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
