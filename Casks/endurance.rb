cask "endurance" do
  version "3.1,47"
  sha256 "b408040af3018f2fe813d0100e8a758c3e3a52c62725c5d429ab1cc8f3dfe4be"

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
