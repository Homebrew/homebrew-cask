cask "mqttfx" do
  version "5.2.0"
  sha256 "7c2805dde4eb128cfdf993fea08e3bb7573234bf61b66fd0fecfe3f3bb3d1f47"

  url "https://download.softblade.de/mqttfx-#{version}-macos.dmg"
  name "MQTT.fx"
  desc "IoT route testing tool"
  homepage "https://softblade.de/en/welcome/"

  livecheck do
    url "https://softblade.de/en/download-2/"
    regex(/href=.*?mqttfx[._-]v?(\d+(?:\.\d+)+)-macos\.dmg/i)
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
