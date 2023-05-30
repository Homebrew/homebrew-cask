cask "bdash" do
  version "1.16.0"
  sha256 "178f895b9615fc01f7fa8cf3dd3d3a5c2fb15bcca27bd65d7e616fa19a5ef983"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
