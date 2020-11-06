cask "mactracker" do
  version "7.9.7"
  sha256 "a328e5302e91f2a355a3f70c34533d0296db2a4c2ba93600071607804b6d531d"

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast "https://update.mactracker.ca/appcast-b.xml"
  name "Mactracker"
  homepage "https://mactracker.ca/"

  auto_updates true

  app "Mactracker.app"
end
