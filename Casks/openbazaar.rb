cask "openbazaar" do
  version "2.4.8"
  sha256 "ee53f6cc3bd4dab56eb439dc8280a9d011b85f920f90a40b5b9dac1c3f0fc9b7"

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
