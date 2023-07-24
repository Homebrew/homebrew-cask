cask "mactracker" do
  version "7.12.4,7.12.5"
  sha256 "058a5b6fb3ec3af9f9f61ee4bc48e82265844987bbb141c35ffc25af07b0e79d"

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
