cask "bdash" do
  version "1.15.2"
  sha256 "df64fb50a41b469303389e05323016adc48c84a3a712a7cc1863deedb2adb9d9"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
