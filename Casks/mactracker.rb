cask "mactracker" do
  version "7.10.1"
  sha256 "ce2ec43c3c801189da3373fcd1e6daac6673aa6ad797c68227c5555be9e30a8a"

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast "https://update.mactracker.ca/appcast-b.xml"
  name "Mactracker"
  desc "Detailed information on every Apple product ever made"
  homepage "https://mactracker.ca/"

  auto_updates true

  app "Mactracker.app"
end
