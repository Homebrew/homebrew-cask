cask "airflow" do
  version "3.3.3"
  sha256 "a942e6ea57f9283d00a25401905314eb57b2bc4c8ea7e28c499ebf3deb1f00f5"

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
