cask "mactracker" do
  version "7.10.5"
  sha256 "23d061f7d12609fa2b090c0e21455cf447bece8af21f8ad0570f9876bab51555"

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
