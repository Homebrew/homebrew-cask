cask "mactracker" do
  version "7.10"
  sha256 "1dbac5f69892f10a7675b0b3cff6ed2ea4816db65c98eab0c452fa6fd197a40b"

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast "https://update.mactracker.ca/appcast-b.xml"
  name "Mactracker"
  desc "Detailed information on every Apple product ever made"
  homepage "https://mactracker.ca/"

  auto_updates true

  app "Mactracker.app"
end
