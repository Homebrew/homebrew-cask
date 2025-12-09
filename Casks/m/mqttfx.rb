cask "mqttfx" do
  arch arm: "applesilicon", intel: "intel"

  version "5.10.1"
  sha256 arm:   "0d3c7e4a8dd7dceaf32821b9081bfefaaf563dae9087ff53b654c6e39f441c65",
         intel: "9d9527e9e0d4fff82505a22ba636368d8c584100979f0731d4d86dd8a76300c6"

  url "https://download.softblade.net/mqttfx-#{version}-macos-#{arch}.dmg",
      verified: "download.softblade.net/"
  name "MQTT.fx"
  desc "IoT route testing tool"
  homepage "https://www.softblade.de/"

  livecheck do
    url "https://www.softblade.de/download/"
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
