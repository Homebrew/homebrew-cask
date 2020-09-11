cask "mactracker" do
  version "7.9.4"
  sha256 "6c423dbf1522a0643fe235461638ba8ed5fc277d1bedfdf76e017f02263b5bca"

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast "https://update.mactracker.ca/appcast-b.xml"
  name "Mactracker"
  homepage "https://mactracker.ca/"

  auto_updates true

  app "Mactracker.app"
end
