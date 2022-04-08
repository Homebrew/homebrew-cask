cask "bdash" do
  version "1.14.5"
  sha256 "8dd50fabfd0557aace374f019f2c2aecc8d0626c573d0c215d345e6f96103fa5"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
