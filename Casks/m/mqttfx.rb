cask "mqttfx" do
  arch arm: "applesilicon", intel: "intel"

  version "5.8.0"
  sha256 arm:   "bb5fcb5dc1fc31c2bbed620e82dff473b0f7db0aa7ad7304dcab47d24ddbcfa7",
         intel: "549e15f9b28c31506d6a23aa1e756209c210466907269fbaa3d1626aad79add1"

  url "https://download.softblade.net/mqttfx-#{version}-macos-#{arch}.dmg",
      verified: "download.softblade.net/"
  name "MQTT.fx"
  desc "IoT route testing tool"
  homepage "https://softblade.de/"

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
