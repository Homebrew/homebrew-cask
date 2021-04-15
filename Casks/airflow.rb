cask "airflow" do
  version "3.3.0"
  sha256 "4b0fff6c0239dadb08fe817e6bd3e3737b2c29362756a1b068299db41019042d"

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
