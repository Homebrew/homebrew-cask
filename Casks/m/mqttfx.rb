cask "mqttfx" do
  arch arm: "applesilicon", intel: "intel"

  version "5.9.0"
  sha256 arm:   "20dd1d1e27237199b0eb7fd1ab37b5e5706b673617466fa009b5c904c53eb20b",
         intel: "8a5292cd6f82ac067e0d5608c659c19ceea4501384f9de762ec8d6899bf6736f"

  url "https://download.softblade.net/mqttfx-#{version}-macos-#{arch}.dmg",
      verified: "download.softblade.net/"
  name "MQTT.fx"
  desc "IoT route testing tool"
  homepage "https://www.softblade.de/"

  livecheck do
    url "https://www.softblade.de/download/"
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
