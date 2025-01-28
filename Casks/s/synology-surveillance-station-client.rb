cask "synology-surveillance-station-client" do
  version "2.2.0,2507"
  sha256 "bf0b6f1a2a01ab685132fc92e1b86337515377bcabd74a2aba1782b076fedf18"

  url "https://global.download.synology.com/download/Utility/SurveillanceStationClient/#{version.tr(",", "-")}/Mac/Synology%20Surveillance%20Station%20Client-#{version.tr(",", "-")}.dmg"
  name "Synology Surveillance Station Client"
  desc "Desktop utility to access Surveillance Station on Synology products"
  homepage "https://www.synology.com/surveillance/"

  livecheck do
    url "https://www.synology.com/api/releaseNote/findChangeLog?identify=SurveillanceStationClient&lang=en-us"
    strategy :json do |json|
      json.dig("info", "versions", "", "all_versions")&.map { |item| item["version"]&.tr("-", ",") }
    end
  end

  pkg "Install Synology Surveillance Station Client.pkg"

  uninstall launchctl: "com.synology.svsclient-SurveillanceStationClient",
            quit:      "com.synology.svsclient-SurveillanceStationClient",
            pkgutil:   [
              "com.synology.svsclient-Live-View",
              "com.synology.svsclient-Monitor-Center",
              "com.synology.svsclient-Recording",
              "com.synology.svsclient-SurveillanceStationClient",
              "com.synology.svsclient-Timeline",
            ],
            delete:    "/Applications/Synology Surveillance Station Client.app"

  zap trash: [
    "~/Library/Application Support/SynologySurveillanceStationClient",
    "~/Library/Preferences/com.synology.Surveillance Station Client.plist",
    "~/Library/Preferences/com.synology.svsclient-SurveillanceStationClient.plist",
    "~/Library/Saved Application State/com.synology.svsclient-SurveillanceStationClient.savedState",
  ]
end
