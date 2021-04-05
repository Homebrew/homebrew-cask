cask "bdash" do
  version "1.9.0"
  sha256 "ecb5c2ec5b0b74e8eca88b1196fea2ef58fc044e6baf91ff012f8d9347ca3430"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
