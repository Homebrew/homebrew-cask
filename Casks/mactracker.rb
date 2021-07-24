cask "mactracker" do
  version "7.10.7"
  sha256 "10aefa61a5cfdc9a69ff95ab0ddd05483671ba0061411f71c5d5b3f72fe13046"

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
