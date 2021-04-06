cask "standard-notes" do
  version "3.6.4"
  sha256 "62a0a8ac2fe0d105450c24c9b48ec91ef29aa7b590ed3bed76d1036f632d24ee"

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
