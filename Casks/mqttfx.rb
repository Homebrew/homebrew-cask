cask "mqttfx" do
  version "5.3.0"
  sha256 "6d602d05a452578725e059f30c43b3142377c54180ac6b91e2cce7522bf171e4"

  url "https://download.softblade.de/mqttfx-#{version}-macos.dmg"
  name "MQTT.fx"
  desc "IoT route testing tool"
  homepage "https://softblade.de/en/welcome/"

  livecheck do
    url "https://softblade.de/download/"
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
