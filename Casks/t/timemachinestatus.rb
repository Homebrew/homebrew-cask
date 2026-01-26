cask "timemachinestatus" do
  version "0.3.0"
  sha256 "da4194bfb2d32bba67b444aeadcb8acf0a536d7002ea5c79af9347c8bea417b5"

  url "https://github.com/lukepistrol/TimeMachineStatus/releases/download/#{version}/TimeMachineStatus.dmg"
  name "TimeMachineStatus"
  desc "Menu bar app to show Time Machine information"
  homepage "https://github.com/lukepistrol/TimeMachineStatus"

  livecheck do
    url "https://github.com/lukepistrol/TimeMachineStatus/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "TimeMachineStatus.app"

  uninstall launchctl: "com.lukepistrol.TimeMachineStatusHelper"

  zap trash: [
    "~/Library/Application Scripts/com.lukepistrol.TimeMachineStatus*",
    "~/Library/Preferences/com.lukepistrol.TimeMachineStatus*.plist",
  ]
end
