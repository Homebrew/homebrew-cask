cask "openbazaar" do
  version "2.4.10"
  sha256 "ba5632071b75ce80c7b1151d0a2e6775d3576e67ea77e36455895e56dc805cad"

  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version}.dmg",
      verified: "github.com/OpenBazaar/openbazaar-desktop/"
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
