cask "endurance" do
  version "3.2.3,53"
  sha256 "27f3145aa5e1b9ced6794fd9b77d8908ed2f4635a1eec914d7b65d0950c96eea"

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
