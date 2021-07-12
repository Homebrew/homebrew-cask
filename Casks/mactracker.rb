cask "mactracker" do
  version "7.10.6"
  sha256 "a96c75e9ac404440d3edfc81e79e11a7394881d290c82ccf47f95e055e30b943"

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
