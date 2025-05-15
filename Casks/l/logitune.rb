cask "logitune" do
  version "3.9.168"
  sha256 :no_check

  url "https://software.vc.logitech.com/downloads/tune/LogiTuneInstaller.dmg"
  name "LogiTune"
  desc "Optimise your webcam, headset, and Logi Dock for video meetings"
  homepage "https://www.logitech.com/en-us/video-collaboration/software/logi-tune-software.html"

  livecheck do
    url "https://support.logi.com/api/v2/help_center/en-us/articles.json?label_names=webcontent=productdownload,websoftware=ef17cf4f-8e0b-11e9-9708-775e53090089"
    regex(/Software[\s-]Version:.*?v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json["articles"]&.map do |item|
        match = item["body"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  installer manual: "LogiTuneInstaller.app"

  uninstall delete: [
    "/Applications/LogiTune.app",
    "/Library/LaunchAgents/com.logitech.logitune.launcher.plist",
    "/Library/LaunchDaemons/com.logitech.LogiRightSight.plist",
  ]

  zap trash: [
    "/Users/Shared/logitune",
    "/Users/Shared/LogiTuneInstallerStarted.txt",
    "~/Library/Application Support/logitune",
    "~/Library/Preferences/com.logitech.logitune.plist",
    "~/Library/Saved Application State/com.logitech.logituneInstaller.savedState",
  ]
end
