cask "timemachinestatus" do
  version "0.0.7"
  sha256 "5d1efca1e780b11eaa9ec02b26b150ef28f6c9d5a82137ceb04a28adb91a134f"

  url "https://github.com/lukepistrol/TimeMachineStatus/releases/download/#{version}/TimeMachineStatus.dmg"
  name "TimeMachineStatus"
  desc "Little menu bar app to show more info about Time Machine than the system default"
  homepage "https://github.com/lukepistrol/TimeMachineStatus"

  livecheck do
    url "https://github.com/lukepistrol/TimeMachineStatus/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sonoma"

  app "TimeMachineStatus.app"

  uninstall launchctl: "com.lukepistrol.TimeMachineStatusHelper"

  zap trash:  [
        "~/Library/Application Scripts/com.lukepistrol.TimeMachineStatus*",
      ],
      delete: [
        "~/Library/Preferences/com.lukepistrol.TimeMachineStatus*.plist",
      ]
end
