cask "airflow" do
  version "3.3.8"
  sha256 "b53d702c365941e4d3bb2bc2272a6809ac04cd1f634be2f0c6a1970ff01fa351"

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
