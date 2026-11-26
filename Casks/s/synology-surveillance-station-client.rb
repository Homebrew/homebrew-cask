cask "synology-surveillance-station-client" do
  arch arm: "arm64", intel: "x64"

  version "2.2.4,2639"
  sha256 arm:   "f007a3a4fd2fb8294c4e712b57081e94fe9e5b7e5b35b8ad65ef143378df84d2",
         intel: "c6139454456c5d50aed05cb47a427e91894c15d374613992e162c55680916441"

  url "https://global.download.synology.com/download/Utility/SurveillanceStationClient/#{version.tr(",", "-")}/Mac/Synology%20Surveillance%20Station%20Client-#{version.tr(",", "-")}_#{arch}.dmg"
  name "Synology Surveillance Station Client"
  desc "Desktop utility to access Surveillance Station on Synology products"
  homepage "https://www.synology.com/surveillance/"

  livecheck do
    url "https://www.synology.com/api/releaseNote/findChangeLog?identify=SurveillanceStationClient&lang=en-us"
    strategy :json do |json|
      json.dig("info", "versions", "", "all_versions")&.map { |item| item["version"]&.tr("-", ",") }
    end
  end

  depends_on :macos

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
