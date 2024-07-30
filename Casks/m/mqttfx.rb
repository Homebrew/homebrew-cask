cask "mqttfx" do
  arch arm: "applesilicon", intel: "intel"

  version "5.7.2"
  sha256 arm:   "ea3d25479a410d950b61bd4921062b15a1fa216bc6263ad4e3074e7b0686e947",
         intel: "af32d5116079964d530354644d31c0720396260a249f402135abfd9b74790de9"

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
