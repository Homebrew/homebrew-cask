cask "endurance" do
  version "3.2,50"
  sha256 "27af8456f8c0439fefc9f35e7a723291cad94f223628b878696a3c58ff5b0517"

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
