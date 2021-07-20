cask "mactracker" do
  version "7.10.6"
  sha256 "c17b735410c9769126e54eb0180a8f1d4ef6bb3ebd7f48485c63c5906fa6fc67"

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  name "Mactracker"
  desc "Detailed information on every Apple product ever made"
  homepage "https://mactracker.ca/"

  livecheck do
    url "https://update.mactracker.ca/appcast-b.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Mactracker.app"
end
