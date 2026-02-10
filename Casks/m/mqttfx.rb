cask "mqttfx" do
  arch arm: "applesilicon", intel: "intel"

  version "5.12.0"
  sha256 arm:   "38d799f24727b9bdd06166ddda3ca2361339a2c58a08b40fed56d570f73d10e5",
         intel: "897e1d8f296ae4b062f96decb0d8ff99ba903a0531cf4a7147d31dc5d4afea01"

  url "https://download.softblade.net/mqttfx-#{version}-macos-#{arch}.dmg",
      verified: "download.softblade.net/"
  name "MQTT.fx"
  desc "IoT route testing tool"
  homepage "https://www.softblade.de/"

  livecheck do
    url "https://www.softblade.de/download/"
    regex(/href=.*?mqttfx[._-]v?(\d+(?:\.\d+)+)-macos/i)
  end

  app "MQTT.fx.app"

  uninstall delete: "/Applications/MQTT.fx.app"

  zap trash: [
    "~/Library/Application Support/MQTT-FX",
    "~/Library/Application Support/MQTT.fx",
  ]
end
