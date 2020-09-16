cask "endurance" do
  version "3.0.1"
  sha256 "f4805baea7824ac6e3a695b841e0306cf789c72fabb5fd7dd579c76a11992069"

  url "https://enduranceapp.com/downloads/Endurance#{version}.zip"
  appcast "https://enduranceapp.com/appcast"
  name "Endurance"
  homepage "https://enduranceapp.com/"

  app "Endurance.app"

  uninstall delete:    "/Library/PrivilegedHelperTools/com.MagnetismStudios.endurance.helper",
            launchctl: "com.MagnetismStudios.endurance.helper"
end
