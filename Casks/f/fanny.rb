cask "fanny" do
  version "26.1.0"
  sha256 "4963bca4fa5e3b780bd0d0601442c391ef68a12d874e3ce3b847717da7607bc7"

  url "https://github.com/DanielStormApps/Fanny/releases/download/#{version}/Fanny_#{version.dots_to_hyphens}.zip"
  name "Fanny"
  desc "Monitor fan speeds and CPU and GPU temperatures"
  homepage "https://fannywidget.com/"

  depends_on macos: :golden_gate

  app "Fanny.app"

  zap trash: [
    "~/Library/Application Scripts/com.fannywidget.today-extension",
    "~/Library/Application Scripts/com.fannywidget.widget",
    "~/Library/Application Scripts/E5BK5K7RRN.com.fannywidget",
    "~/Library/Application Support/com.fannywidget",
    "~/Library/Caches/com.fannywidget",
    "~/Library/Containers/com.fannywidget.today-extension",
    "~/Library/Containers/com.fannywidget.widget",
    "~/Library/Group Containers/E5BK5K7RRN.com.fannywidget",
    "~/Library/Group Containers/fanny-shared-defaults",
    "~/Library/HTTPStorages/com.fannywidget",
    "~/Library/Logs/Fanny",
    "~/Library/Preferences/com.fannywidget.plist",
  ]
end
