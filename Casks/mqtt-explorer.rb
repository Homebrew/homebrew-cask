cask "mqtt-explorer" do
  version "0.3.5"
  sha256 "4322a9127c3ce9025d33afa3ff91e76e8873fff260493a112eadc4769c027778"

  # github.com/thomasnordquist/MQTT-Explorer/ was verified as official when first introduced to the cask
  url "https://github.com/thomasnordquist/MQTT-Explorer/releases/download/v#{version}/MQTT-Explorer-#{version}-mac.zip"
  appcast "https://github.com/thomasnordquist/MQTT-Explorer/releases.atom"
  name "MQTT Explorer"
  homepage "https://mqtt-explorer.com/"

  app "MQTT Explorer.app"

  uninstall quit: "de.t7n.apps.mqtt-explorer"

  zap trash: [
    "~/Library/Containers/de.t7n.apps.mqtt-explorer",
    "~/Library/Group Containers/*.de.t7n.apps.mqtt-explorer",
    "~/Library/Application Scripts/de.t7n.apps.mqtt-explorer",
  ]
end
