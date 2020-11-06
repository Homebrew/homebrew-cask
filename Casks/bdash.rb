cask "bdash" do
  version "1.8.3"
  sha256 "7d93babc7bdf2a1cad6e6083d2b52a55141fc5e6c24c41c96585357e84da5f04"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  appcast "https://github.com/bdash-app/bdash/releases.atom"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
