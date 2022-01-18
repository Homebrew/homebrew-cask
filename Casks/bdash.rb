cask "bdash" do
  version "1.12.1"
  sha256 "fa687dc49543c797b69659ffc0f5804197a02f62277920f18200440c1f7852f5"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
