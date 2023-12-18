cask "mactracker" do
  version "7.12.12"
  sha256 "820833550fcc471d49b6ae3bd3aac47fcc55511c7c28adcaafc0bb91a5ffd222"

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  name "Mactracker"
  desc "Detailed information on every Apple product ever made"
  homepage "https://mactracker.ca/"

  livecheck do
    url "https://update.mactracker.ca/appcast-b.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Mactracker.app"

  zap trash: [
    "~/Library/Application Support/com.mactrackerapp.Mactracker",
    "~/Library/Caches/com.mactrackerapp.Mactracker",
    "~/Library/Preferences/com.mactrackerapp.Mactracker.plist",
    "~/Library/Saved Application State/com.mactrackerapp.Mactracker.savedState",
  ]
end
