cask "mqttfx" do
  version "5.5.0"
  sha256 "441723f1decb92db246c3df5afeae5d43564a99ca149f7a1588b0efde7e26c0a"

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
