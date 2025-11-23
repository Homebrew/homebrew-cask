cask "cardo-update" do
  version "4.7.0"
  sha256 "e5bb2a0c738f795a142cea450a1e8677d22663f1aeba07a60a10d697bc9faa32"

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
