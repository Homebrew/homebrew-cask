cask "mqttfx" do
  arch arm: "apple-silicon", intel: "intel"
  livecheck_media_id = on_arch_conditional arm: "525", intel: "507"

  version "5.14.2"
  sha256 arm:   "e2351d976349945ed432c6409624726cb27ba8a7a2d6a0c5bb586b4338b2e3f0",
         intel: "f73da09c9e72cd53e05753457197b29c05f1b525ebb1b0c97ce67133c9843028"

  url "https://download.softblade.net/mqttfx-#{version}-macos-#{arch}.dmg"
  name "MQTT.fx"
  desc "IoT route testing tool"
  homepage "https://www.softblade.de/", browsed: "2026-09-08"

  livecheck do
    url "https://download.softblade.net/updates.xml"
    strategy :xml do |xml|
      xml.get_elements("//entry[@targetMediaFileId='#{livecheck_media_id}']").map do |item|
        item.attributes["newVersion"]
      end
    end
  end

  depends_on :macos

  app "MQTT.fx.app"

  uninstall quit:   "com.install4j.2094-5999-4730-7458.200",
            delete: "/Applications/MQTT.fx.app"

  zap trash: [
    "~/Library/Application Support/MQTT-FX",
    "~/Library/Application Support/MQTT.fx",
    "~/Library/Preferences/de.softblade.mqttfx.plist",
    "~/Library/Saved Application State/de.softblade.mqttfx.savedState",
  ]
end
