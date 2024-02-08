cask "mqttfx" do
  arch arm: "aarch64", intel: "amd64"

  version "5.6.0"
  sha256 arm:   "295bf52305a6ddd36b569e746dd8df5a43db27d819d13c4f5f05c8cf1aa49eea",
         intel: "5740a166b77116f6f7a929f33eea8e111b44c93d6dc343884d87ea100a46ba26"

  url "https://download.softblade.de/mqttfx-#{version}-macos-#{arch}.dmg"
  name "MQTT.fx"
  desc "IoT route testing tool"
  homepage "https://softblade.de/en/welcome/"

  livecheck do
    url "https://softblade.de/download/"
    regex(/href=.*?mqttfx[._-]v?(\d+(?:\.\d+)+)-macos/i)
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
