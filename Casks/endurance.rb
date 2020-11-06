cask "endurance" do
  version "3.1"
  sha256 "b408040af3018f2fe813d0100e8a758c3e3a52c62725c5d429ab1cc8f3dfe4be"

  url "https://enduranceapp.com/downloads/Endurance#{version}.zip"
  appcast "https://enduranceapp.com/appcast"
  name "Endurance"
  homepage "https://enduranceapp.com/"

  app "Endurance.app"

  uninstall delete:    "/Library/PrivilegedHelperTools/com.MagnetismStudios.endurance.helper",
            launchctl: "com.MagnetismStudios.endurance.helper"
end
