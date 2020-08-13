cask "airflow" do
  version "3.1.8"
  sha256 "03c8c4741f074f632a1c3eae048e59f78a82cb87ca2eb617f4f98bd1885e6966"

  # cdn.downloads.iocave.net/Airflow/ was verified as official when first introduced to the cask
  url "https://cdn.downloads.iocave.net/Airflow/Airflow%20#{version}.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://airflowapp.com/download/latest?mac"
  name "Airflow"
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
