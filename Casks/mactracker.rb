cask "mactracker" do
  version "7.10.2"
  sha256 "b0f9200c5fb43999fcc0e0138ccddf5ee24cbcfae6e25dcbc5a5ebb8a8ec1646"

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
