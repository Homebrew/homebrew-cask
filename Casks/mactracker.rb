cask "mactracker" do
  version "7.10.3"
  sha256 "e3b2d654126dc3b2a08e1f104bb1fdfe9f92043e0c758b6010847b2d145f6d10"

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
