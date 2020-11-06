cask "advancedrestclient" do
  version "15.0.7"
  sha256 "1dc4ef5e21dfb72abeba6de6a41673fadc0ce46ba4252c7d8d8b3648372fe86b"

  url "https://github.com/advanced-rest-client/arc-electron/releases/download/v#{version}/arc-#{version}.dmg"
  appcast "https://github.com/advanced-rest-client/arc-electron/releases.atom"
  name "Advanced Rest Client"
  homepage "https://github.com/advanced-rest-client/arc-electron"

  app "AdvancedRestClient.app"

  zap trash: [
    "~/Library/Application Support/advanced-rest-client",
    "~/Library/Logs/AdvancedRestClient",
  ]
end
