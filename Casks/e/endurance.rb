cask "endurance" do
  version "3.2.6"
  sha256 "9e1e6b0f7f5ebeba844c867226ce6badc6dcc53c4b3eefbf6fb680fb16bfbf56"

  url "https://enduranceapp.com/downloads/Endurance#{version}.zip"
  name "Endurance"
  desc "Battery monitoring and management"
  homepage "https://enduranceapp.com/"

  livecheck do
    url "https://enduranceapp.com/appcast"
    strategy :sparkle, &:short_version
  end

  app "Endurance.app"

  uninstall launchctl: "com.MagnetismStudios.endurance.helper",
            delete:    "/Library/PrivilegedHelperTools/com.MagnetismStudios.endurance.helper"
end
