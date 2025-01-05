cask "airflow" do
  version "3.3.9"
  sha256 "fb7fa83fd4662ffdf5237b683556ef13ccb15ec5f1572a8e86ff9b1779764644"

  url "https://cdn.downloads.iocave.net/Airflow/Airflow%20#{version}.zip",
      verified: "cdn.downloads.iocave.net/Airflow/"
  name "Airflow"
  desc "Watch local content on Apple TV and Chromecast"
  homepage "https://airflowapp.com/"

  livecheck do
    url "https://airflowapp.com/download/latest?mac"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Airflow.app"

  zap trash: [
    "~/Library/Application Support/Airflow",
    "~/Library/Caches/com.bitcavehq.Airflow",
    "~/Library/Preferences/com.bitcavehq.Airflow.plist",
    "~/Library/Saved Application State/com.bitcavehq.Airflow.savedState",
  ]
end
