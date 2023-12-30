cask "logitune" do
  version "3.5.173"
  sha256 :no_check

  url "https://software.vc.logitech.com/downloads/tune/LogiTuneInstaller.dmg"
  name "LogiTune"
  desc "Optimize your webcam, headset, and Logi Dock for video meetings"
  homepage "https://www.logitech.com/en-us/video-collaboration/software/logi-tune-software.html"

  livecheck do
    url :url
    strategy :extract_plist
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
