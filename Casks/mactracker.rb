cask "mactracker" do
  version "7.10.5"
  sha256 "f75323498b9107fd28a51939f67f2da5c3c65527a0f97ba3cc383c8f70ced1b4"

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
