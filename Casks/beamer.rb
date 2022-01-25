cask "beamer" do
  version "3.5,35001"
  sha256 "8f8d72ab99fd47c7b9df1acd51c6fcc8b6ebb8c574587e8e1fc6cdc5868ba21c"

  url "https://beamer-app.com/resources/downloads/Beamer-#{version.csv.first}.zip"
  name "Beamer"
  desc "Desktop casting/streaming app for Apple TV and Chromecast"
  homepage "https://beamer-app.com/"

  livecheck do
    url "https://beamer-app.com/beamer#{version.major}-appcast.xml"
    strategy :sparkle
  end

  app "Beamer.app"
end
