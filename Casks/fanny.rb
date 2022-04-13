cask "fanny" do
  version "2.3.0"
  sha256 :no_check

  url "https://fannywidget.com/FannyWidget.zip"
  name "FannyWidget"
  homepage "https://fannywidget.com/"

  livecheck do
    url "https://github.com/DanielStormApps/Fanny/releases"
    strategy :git
  end

  depends_on macos: ">= :high_sierra"

  app "FannyWidget-v#{version.csv.first}/Fanny.app"

  zap trash: [
    "~/Library/Application Scripts/com.fannywidget.today-extension",
    "~/Library/Containers/com.fannywidget.today-extension",
    "~/Library/Group Containers/fanny-shared-defaults",
    "~/Library/Preferences/com.fannywidget.plist",
  ]
end
