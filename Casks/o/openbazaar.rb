cask "openbazaar" do
  version "2.4.10"
  sha256 "ba5632071b75ce80c7b1151d0a2e6775d3576e67ea77e36455895e56dc805cad"

  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version}.dmg"
  name "OpenBazaar"
  homepage "https://github.com/OpenBazaar/openbazaar-desktop/"

  deprecate! date: "2024-01-14", because: :discontinued
  disable! date: "2025-01-14", because: :discontinued

  app "OpenBazaar#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/OpenBazaar#{version.major_minor}",
    "~/Library/Caches/com.electron.openbazaar",
    "~/Library/Caches/com.electron.openbazaar#{version.major}",
    "~/Library/Caches/com.electron.openbazaar#{version.major}.ShipIt",
    "~/Library/Preferences/com.electron.openbazaar#{version.major}.helper.plist",
    "~/Library/Preferences/com.electron.openbazaar.plist",
  ]
end
