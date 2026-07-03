cask "mqttfx" do
  arch arm: "applesilicon", intel: "intel"

  version "5.13.1"
  sha256 arm:   "4db9640c57d9a991e439f4581d383c75f71e2823a42728e4aa849bb9a780ac39",
         intel: "e8764b27a10aaaaaa9f1ef76f8d19491ba3f104062c174412f39bfd6c5fe085c"

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
