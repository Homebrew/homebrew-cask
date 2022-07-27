cask "bdash" do
  version "1.15.1"
  sha256 "f0a4c1a16a9406dcf4ba13feca9359e1a7acea1de3346c621ad4dd58fe2a7778"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
