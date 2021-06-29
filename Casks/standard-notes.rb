cask "standard-notes" do
  version "3.8.11"
  sha256 "6d7089962deba36106c0055f7237e1fa05e2992c5134793bd041d8d11ea16b33"

  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/Standard-Notes-#{version}-mac.zip",
      verified: "github.com/standardnotes/desktop/"
  name "Standard Notes"
  desc "Free, open-source, and completely encrypted notes app"
  homepage "https://standardnotes.org/"

  auto_updates true

  app "Standard Notes.app"

  zap trash: [
    "~/Library/Application Support/Standard Notes",
    "~/Library/Caches/org.standardnotes.standardnotes",
    "~/Library/Caches/org.standardnotes.standardnotes.ShipIt",
    "~/Library/Preferences/org.standardnotes.standardnotes.plist",
    "~/Library/Preferences/org.standardnotes.standardnotes.helper.plist",
    "~/Library/Saved Application State/org.standardnotes.standardnotes.savedState",
  ]
end
