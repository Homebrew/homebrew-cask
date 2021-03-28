cask "mactracker" do
  version "7.10.4"
  sha256 "00e4d8dcbddede3df5bfc3f69ed38af3616bcc664c3bd4d8270611dddf708773"

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
