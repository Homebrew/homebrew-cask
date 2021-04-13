cask "bdash" do
  version "1.9.1"
  sha256 "285963195e3ec4a7040df1d4f1a08e7bbe3d2e8791c957d13ef263dcf41e6932"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
