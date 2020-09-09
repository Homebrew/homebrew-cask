cask "mactracker" do
  version "7.9.4"
  sha256 "318c3c6c4d8e6456cbb358d63ecd58f8526625792076ab1f2630af38a87d0e8b"

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast "https://update.mactracker.ca/appcast-b.xml"
  name "Mactracker"
  homepage "https://mactracker.ca/"

  auto_updates true

  app "Mactracker.app"
end
