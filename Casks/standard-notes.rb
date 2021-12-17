cask "standard-notes" do
  version "3.9.7"
  sha256 "73b598803d07871164db9565b636b30bd8056ea62ff2513ca08a320182178df5"

  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/Standard-Notes-#{version}-mac-x64.zip",
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
