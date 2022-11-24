cask "endurance" do
  version "3.2.4,54"
  sha256 "263876697890b93c275a958e4969b6409c8d60d1116c2725f20e64b54b1f1a43"

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
