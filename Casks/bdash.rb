cask "bdash" do
  version "1.15.0"
  sha256 "15e065947bced7e0524d803cbdfe5d1b7b20bb42256865104e97d547f28ff91f"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
