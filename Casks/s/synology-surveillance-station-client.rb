cask "synology-surveillance-station-client" do
  arch arm: "arm64", intel: "x64"

  version "2.2.2,2596"
  sha256 arm:   "6597cf1f1bf09ab1ba547f3c4a6f3d3fcf926dc69fd1a55972d1106f30adafcf",
         intel: "e4c216d70a917b7bc021c5997a42886964c197d23a6ff639008fcb87394ef863"

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
