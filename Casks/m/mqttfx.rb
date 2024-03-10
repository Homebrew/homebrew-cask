cask "mqttfx" do
  arch arm: "applesilicon", intel: "intel"

  version "5.7.0"
  sha256 arm:   "7c2e1bdca94fe3f94611c24d6378ac9d258030f15426c05047dcf33a9b711de3",
         intel: "c992a54d7d873c055566651df07d9cb89bdcc347fa2db5ee1ed98bdd4abb9157"

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
