cask "bdash" do
  version "1.14.1"
  sha256 "cc494654ecfc0a19aa7a1dca3bab40e9debf3e77a10deb5a924eaa1d078a0aee"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
