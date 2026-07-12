cask "mqttfx" do
  arch arm: "applesilicon", intel: "intel"

  version "5.14.0"
  sha256 arm:   "42727350ef17ebe6b264da8787c8f3b402ce15c0d667e4c22470cbf8a9202959",
         intel: "a12b19b7051e0e6e0ae457614484a56446d88cede27c55e7a68512bd0befb126"

  url "https://download.softblade.net/mqttfx-#{version}-macos-#{arch}.dmg",
      verified: "download.softblade.net/"
  name "MQTT.fx"
  desc "IoT route testing tool"
  homepage "https://www.softblade.de/"

  livecheck do
    url "https://www.softblade.de/download/"
    regex(/href=.*?mqttfx[._-]v?(\d+(?:\.\d+)+)-macos/i)
  end

  depends_on :macos

  app "MQTT.fx.app"

  uninstall delete: "/Applications/MQTT.fx.app"

  zap trash: [
    "~/Library/Application Support/MQTT-FX",
    "~/Library/Application Support/MQTT.fx",
  ]
end
