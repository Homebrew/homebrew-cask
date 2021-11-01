cask "mqttfx" do
  version "1.7.1"
  sha256 "544b6ac0afefb80b5a56c2a6f2411f999862fb8f0f20502c912f28a9d1aa3b4a"

  url "https://www.jensd.de/apps/mqttfx/#{version}/mqttfx-#{version}-macos.dmg",
      verified: "jensd.de/apps/mqttfx/"
  name "MQTT.fx"
  homepage "http://www.mqttfx.org/"

  livecheck do
    url "https://www.jensd.de/apps/mqttfx/appcast.xml"
    strategy :sparkle
  end

  installer script: {
    executable: "MQTT.fx Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
    sudo:       true,
  }

  uninstall delete: "/Applications/MQTT.fx.app"

  zap trash: [
    "~/Library/Application Support/MQTT-FX",
    "~/Library/Application Support/MQTT.fx",
  ]
end
