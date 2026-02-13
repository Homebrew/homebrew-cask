cask "fanny" do
  version "2.3.0"
  sha256 "adcd59e6839934959dc7ebb367f2f94e1b1542b83977a5117a6f670d23d2e053"

  url "https://github.com/DanielStormApps/Fanny/releases/download/#{version}/FannyWidget.zip",
      verified: "github.com/DanielStormApps/Fanny/"
  name "FannyWidget"
  desc "Notification Center widget and menu bar application to monitor fans"
  homepage "https://fannywidget.com/"

  app "FannyWidget-v#{version}/Fanny.app"

  zap trash: [
    "~/Library/Application Scripts/com.fannywidget.today-extension",
    "~/Library/Containers/com.fannywidget.today-extension",
    "~/Library/Group Containers/fanny-shared-defaults",
    "~/Library/Preferences/com.fannywidget.plist",
  ]

  caveats do
    requires_rosetta
  end
end
