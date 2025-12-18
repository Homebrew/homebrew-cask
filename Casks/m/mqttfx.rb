cask "mqttfx" do
  arch arm: "applesilicon", intel: "intel"

  version "5.11.0"
  sha256 arm:   "c53210d38104bd4b94da2feadb45e4b62445efb087470cc4fc27cd1412b5ff93",
         intel: "a0258aa7ede33d57f7d039e7e61d239e2b52a016a3d300fcbd6abeaf0a55f42c"

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
