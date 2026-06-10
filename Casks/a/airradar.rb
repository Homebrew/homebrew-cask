cask "airradar" do
  version "8.0"
  sha256 :no_check

  url "https://www.koingosw.com/products/airradar/download/airradar.dmg"
  name "AirRadar"
  desc "Scans for wireless networks and maps signal strength with GPS"
  homepage "https://www.koingosw.com/products/airradar/"

  livecheck do
    url "https://www.koingosw.com/products/airradar/"
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :big_sur

  app "AirRadar.app"

  zap trash: [
    "~/Library/Caches/com.koingosw.AirRadar",
    "~/Library/HTTPStorages/com.koingosw.AirRadar",
    "~/Library/Preferences/com.koingosw.AirRadar.plist",
    "~/Library/Saved Application State/com.koingosw.AirRadar.savedState",
  ]
end
