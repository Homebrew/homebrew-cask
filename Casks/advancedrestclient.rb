cask "advancedrestclient" do
  version "16.0.0-aplha.5"
  sha256 "6312c9ffebc393b0745c2a1b9dd9e8cf9090779697a924d1cff151ec6c408866"

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
