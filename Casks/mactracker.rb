cask "mactracker" do
  version "7.10"
  sha256 "a6f568e068e4b7f29b797626b32963ff338bf9dcde38e4a2dd53f1f145f7b8a9"

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast "https://update.mactracker.ca/appcast-b.xml"
  name "Mactracker"
  desc "Detailed information on every Apple product ever made"
  homepage "https://mactracker.ca/"

  auto_updates true

  app "Mactracker.app"
end
