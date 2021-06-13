cask "bdash" do
  version "1.11.0"
  sha256 "c14810d7b88a4985f36f97d20d7429add75cb3acc6f1b89847d909cb17e91834"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
