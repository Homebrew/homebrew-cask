cask "mqttfx" do
  arch arm: "applesilicon", intel: "intel"

  version "5.14.2"
  sha256 arm:   "e2351d976349945ed432c6409624726cb27ba8a7a2d6a0c5bb586b4338b2e3f0",
         intel: "f73da09c9e72cd53e05753457197b29c05f1b525ebb1b0c97ce67133c9843028"

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
