cask "endurance" do
  version "3.2.6,56"
  sha256 "9e1e6b0f7f5ebeba844c867226ce6badc6dcc53c4b3eefbf6fb680fb16bfbf56"

  url "https://enduranceapp.com/downloads/Endurance#{version.csv.first}.zip"
  name "Endurance"
  desc "Battery monitoring and management"
  homepage "https://enduranceapp.com/"

  livecheck do
    url "https://enduranceapp.com/appcast"
    strategy :sparkle
  end

  app "Endurance.app"

  uninstall delete:    "/Library/PrivilegedHelperTools/com.MagnetismStudios.endurance.helper",
            launchctl: "com.MagnetismStudios.endurance.helper"
end
