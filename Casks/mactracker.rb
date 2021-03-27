cask "mactracker" do
  version "7.10.4"
  sha256 "56df4dcab72453e27f164136e02ac7d96bba78ae46e8e8b407a86507e7c5aa7f"

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
