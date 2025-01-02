cask "airflow" do
  version "3.3.9"
  sha256 "d34f70c6aef53d4b35073f3b8822440110c0c7d9105479f8b2ff76482ad1e27e"

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
  depends_on macos: ">= :sierra"

  app "Airflow.app"

  zap trash: [
    "~/Library/Application Support/Airflow",
    "~/Library/Caches/com.bitcavehq.Airflow",
    "~/Library/Preferences/com.bitcavehq.Airflow.plist",
    "~/Library/Saved Application State/com.bitcavehq.Airflow.savedState",
  ]
end
