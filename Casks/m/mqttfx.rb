cask "mqttfx" do
  arch arm: "applesilicon", intel: "intel"

  version "5.13.0"
  sha256 arm:   "574943673ec96935a77d5229b93fb4678a853012487e170483bc4de906959036",
         intel: "a98738f01b12eed8b498cf8f6c97cd12bb411e76f1a8d376181687d07979e5c6"

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
