cask "beamer" do
  version "3.4"
  sha256 "3076376d6615a74ac71f07d15805798d7d15056cf77f4501fbf6c4e5806928df"

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  appcast "https://beamer-app.com/beamer#{version.major}-appcast.xml"
  name "Beamer"
  desc "Desktop casting/streaming app for Apple TV and Chromecast"
  homepage "https://beamer-app.com/"

  app "Beamer.app"
end
