cask "mactracker" do
  version "7.11"
  sha256 "a16cf6ebeb509e2a3841476b2c7c7c912b8bd02b21d521198223b6f3af15d414"

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
