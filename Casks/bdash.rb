cask "bdash" do
  version "1.14.6"
  sha256 "8b090c131b08d41b1a4e8cfcf2fd8a691a182136770122339e980263177f9063"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
