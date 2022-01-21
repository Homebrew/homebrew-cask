cask "bdash" do
  version "1.12.2"
  sha256 "c851262cbfe3e542d2722138ef7f327482ce4c8c02caf64d4a4db2c590a52513"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
