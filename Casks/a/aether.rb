cask "aether" do
  version "2.0.0-dev.15,2011262249.19338c93"
  sha256 "87bb9f70525025dadb1d00328f37ee075fe3866044d092a9533e7df71653aca7"

  url "https://static.getaether.net/Releases/Aether-#{version.csv.first}/#{version.csv.second}/mac/Aether-#{version.csv.first}%2B#{version.csv.second}.dmg"
  name "Aether"
  desc "Peer-to-peer ephemeral public communities"
  homepage "https://getaether.net/"

  disable! date: "2024-07-10", because: :no_longer_available

  app "Aether.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/aether-backend-mac-*.diag",
    "~/Library/Application Support/Aether",
    "~/Library/Preferences/com.aethertechnologies.Aether.plist",
    "~/Library/Saved Application State/com.aethertechnologies.Aether.savedState",
  ]
end
