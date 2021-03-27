cask "aether" do
  version "2.0.0-dev.15,2011262249.19338c93"
  sha256 "87bb9f70525025dadb1d00328f37ee075fe3866044d092a9533e7df71653aca7"

  url "https://static.getaether.net/Releases/Aether-#{version.before_comma}/#{version.after_comma}/mac/Aether-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast "https://static.getaether.net/WebsiteReleaseLinks/Latest/LatestReleaseLinks.json"
  name "Aether"
  desc "Peer-to-peer ephemeral public communities"
  homepage "https://getaether.net/"

  app "Aether.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/aether-backend-mac-*.diag",
    "~/Library/Application Support/Aether",
    "~/Library/Preferences/com.aethertechnologies.Aether.plist",
    "~/Library/Saved Application State/com.aethertechnologies.Aether.savedState",
  ]
end
