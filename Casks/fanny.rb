cask "fanny" do
  version "2.3.0,1"
  sha256 :no_check

  url "https://fannywidget.com/FannyWidget.zip"
  appcast "https://github.com/DanielStormApps/Fanny/releases.atom"
  name "FannyWidget"
  homepage "https://fannywidget.com/"

  depends_on macos: ">= :high_sierra"

  app "FannyWidget-v#{version}/Fanny.app"

  zap trash: [
    "~/Library/Application Scripts/com.fannywidget.today-extension",
    "~/Library/Containers/com.fannywidget.today-extension",
    "~/Library/Group Containers/fanny-shared-defaults",
    "~/Library/Preferences/com.fannywidget.plist",
  ]
end
