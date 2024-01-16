cask "timemachinestatus" do
  version "0.0.12"
  sha256 "296f78c21075df2bebee0b856f703ac4f32c2c9190a1320087fad5f0411a8af4"

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
