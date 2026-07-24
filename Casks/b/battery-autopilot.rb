cask "battery-autopilot" do
  version "1.5.0"
  sha256 "b9d1ceed1c164d6bb1ed94b31ac2fee6c7c30be72e5a0f920b8abec6130650cc"

  url "https://macbattery.net/updates/BatteryAutopilot-#{version}.dmg"
  name "Battery Autopilot"
  desc "AI battery care with 80% charge limit and measured power savings"
  homepage "https://macbattery.net/"

  livecheck do
    url "https://macbattery.net/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Battery Autopilot.app"

  uninstall launchctl: "net.anysocial.batterypilot.helper",
            quit:      "net.anysocial.batterypilot"

  zap trash: [
    "~/Library/Application Support/BatteryPilot",
    "~/Library/Caches/net.anysocial.batterypilot",
    "~/Library/HTTPStorages/net.anysocial.batterypilot",
    "~/Library/Preferences/net.anysocial.batterypilot.plist",
  ]
end
