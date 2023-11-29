cask "timemachinestatus" do
  version "0.0.10"
  sha256 "d2db01548d3f59dda7b091b23070cff934b58820c113b467261d1c0dce6dbe75"

  url "https://github.com/lukepistrol/TimeMachineStatus/releases/download/#{version}/TimeMachineStatus.dmg"
  name "TimeMachineStatus"
  desc "Menu bar app to show Time Machine information"
  homepage "https://github.com/lukepistrol/TimeMachineStatus"

  livecheck do
    url "https://github.com/lukepistrol/TimeMachineStatus/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TimeMachineStatus.app"

  uninstall launchctl: "com.lukepistrol.TimeMachineStatusHelper"

  zap trash: [
    "~/Library/Application Scripts/com.lukepistrol.TimeMachineStatus*",
    "~/Library/Preferences/com.lukepistrol.TimeMachineStatus*.plist",
  ]
end
