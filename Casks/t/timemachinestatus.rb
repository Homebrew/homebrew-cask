cask "timemachinestatus" do
  version "0.1.2"
  sha256 "dc338e76624d3e8bdbe25ddd056bd43bb5b0d57dcb6bed4629f1e54148b9d6a3"

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
