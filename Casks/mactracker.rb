cask "mactracker" do
  version "7.11.5"
  sha256 "75ea8c783b5bf9d986f0d3ca938f86d508adadf5762e9a3f0aa7c9b3f4ad1af9"

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

  zap trash: [
    "~/Library/Application Support/com.mactrackerapp.Mactracker",
    "~/Library/Caches/com.mactrackerapp.Mactracker",
    "~/Library/Preferences/com.mactrackerapp.Mactracker.plist",
    "~/Library/Saved Application State/com.mactrackerapp.Mactracker.savedState",
  ]
end
