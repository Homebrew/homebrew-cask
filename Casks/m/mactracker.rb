cask "mactracker" do
  version "8.2.5"
  sha256 "273fc0d2f55845fbc6fe671798be1f7dd5dbccb7fe05db7f62dc66a75a704878"

  url "https://mactracker.ca/downloads/Mactracker_#{version}.zip"
  name "Mactracker"
  desc "Detailed information on every Apple product ever made"
  homepage "https://mactracker.ca/"

  livecheck do
    url "https://update.mactracker.ca/appcast-b.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "Mactracker.app"

  zap trash: [
    "~/Library/Application Support/com.mactrackerapp.Mactracker",
    "~/Library/Caches/com.mactrackerapp.Mactracker",
    "~/Library/Preferences/com.mactrackerapp.Mactracker.plist",
    "~/Library/Saved Application State/com.mactrackerapp.Mactracker.savedState",
  ]
end
