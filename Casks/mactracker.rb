cask "mactracker" do
  version "7.9.5"
  sha256 "216692b5e2e19ad0ec565b022efd2b4068135ca9b0d486fb8aa45c23cfe367ee"

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast "https://update.mactracker.ca/appcast-b.xml"
  name "Mactracker"
  homepage "https://mactracker.ca/"

  auto_updates true

  app "Mactracker.app"
end
