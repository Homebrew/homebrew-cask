cask "between" do
  version "1.0.4"
  sha256 "87b8c8c2762ae02fc65b1457dddc1613847bdef513677982f63ed9f13c6e296d"

  url "http://assets-pc.between.us/downloads/between-#{version}.dmg"
  name "Between"
  homepage "https://between.us/"

  livecheck do
    url "http://assets-pc.between.us/downloads/metadata-mac.xml"
    strategy :sparkle
  end

  app "Between.app"
end
