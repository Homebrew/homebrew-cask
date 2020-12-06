cask "openbazaar" do
  version "2.4.9"
  sha256 "ecd5a1bfda868db89c7ec403a2506441a359f762bafd11846fad39c68bf3fb5b"

  # github.com/OpenBazaar/openbazaar-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version}.dmg"
  appcast "https://github.com/OpenBazaar/openbazaar-desktop/releases.atom"
  name "OpenBazaar#{version.major}"
  homepage "https://www.openbazaar.org/"

  app "OpenBazaar#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/OpenBazaar#{version.major_minor}",
    "~/Library/Caches/com.electron.openbazaar#{version.major}",
    "~/Library/Caches/com.electron.openbazaar#{version.major}.ShipIt",
    "~/Library/Caches/com.electron.openbazaar",
    "~/Library/Preferences/com.electron.openbazaar#{version.major}.helper.plist",
    "~/Library/Preferences/com.electron.openbazaar.plist",
  ]
end
