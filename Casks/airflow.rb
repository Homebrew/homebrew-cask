cask "airflow" do
  version "3.1.9"
  sha256 "dced2026abae2db3747d5ca439a2cef45c9b53cfffe8bbcdb4adb438c2c2f777"

  # cdn.downloads.iocave.net/Airflow/ was verified as official when first introduced to the cask
  url "https://cdn.downloads.iocave.net/Airflow/Airflow%20#{version}.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://airflowapp.com/download/latest?mac"
  name "Airflow"
  desc "Watch local content on Apple TV and Chromecast"
  homepage "https://airflowapp.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Airflow.app"

  zap trash: [
    "~/Library/Application Support/Airflow",
    "~/Library/Caches/com.bitcavehq.Airflow",
    "~/Library/Preferences/com.bitcavehq.Airflow.plist",
    "~/Library/Saved Application State/com.bitcavehq.Airflow.savedState",
  ]
end
