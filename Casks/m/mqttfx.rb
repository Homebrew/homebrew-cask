cask "mqttfx" do
  arch arm: "applesilicon", intel: "intel"

  version "5.14.1"
  sha256 arm:   "c2d082ff0165aab9ff2a104dcf2f904d6a8fabb85feb01224bf5c7512103e07e",
         intel: "92536a2687219772ebf4d6b2fc872ab9caca58b0b2f06f875060cf2d2d7a58d3"

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
