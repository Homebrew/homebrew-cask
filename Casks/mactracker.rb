cask "mactracker" do
  version "7.9.6"
  sha256 "221fce0f3da77ddc6e263b0837d002f1340f1775bb960f6a1b7a339a4908b1e8"

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast "https://update.mactracker.ca/appcast-b.xml"
  name "Mactracker"
  homepage "https://mactracker.ca/"

  auto_updates true

  app "Mactracker.app"
end
