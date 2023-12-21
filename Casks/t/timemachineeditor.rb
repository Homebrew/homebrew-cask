cask "timemachineeditor" do
  version "5.2.2,219"
  sha256 :no_check

  url "https://tclementdev.com/timemachineeditor/TimeMachineEditor.pkg"
  name "TimeMachineEditor"
  desc "Utility to change the default backup interval of Time Machine"
  homepage "https://tclementdev.com/timemachineeditor/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  pkg "TimeMachineEditor.pkg"

  uninstall launchctl: "com.tclementdev.timemachineeditor.scheduler",
            pkgutil:   "com.tclementdev.pkg.timemachineeditor"

  zap delete: [
        "/Library/Logs/TimeMachineEditor",
        "/Library/TimeMachineEditor",
      ],
      trash:  [
        "~/Library/Logs/TimeMachineEditor",
        "~/Library/Preferences/com.tclementdev.timemachineeditor.application.plist",
      ]
end
