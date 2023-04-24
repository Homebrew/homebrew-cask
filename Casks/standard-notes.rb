cask "standard-notes" do
  arch arm: "arm64", intel: "x64"

  version "3.152.0"
  sha256 arm:   "5c9273265ce4ca24c4ab431047ded4d297f5238a5b13e83a88b5772abe611906",
         intel: "b579e38ef999207227633b3c888ae03b85f3a8c109489b8b6a37e142f89629e5"

  url "https://github.com/standardnotes/app/releases/download/%40standardnotes%2Fdesktop%40#{version}/standard-notes-#{version}-mac-#{arch}.zip",
      verified: "github.com/standardnotes/app/"
  name "Standard Notes"
  desc "Free, open-source, and completely encrypted notes app"
  homepage "https://standardnotes.org/"

  livecheck do
    url "https://standardnotes.com/download"
    regex(/standard-notes-(\d+(?:\.\d+)+)-mac-#{arch}\.dmg/i)
  end

  auto_updates true

  app "Standard Notes.app"

  zap trash: [
    "~/Library/Application Support/Standard Notes",
    "~/Library/Caches/org.standardnotes.standardnotes.ShipIt",
    "~/Library/Caches/org.standardnotes.standardnotes",
    "~/Library/Preferences/org.standardnotes.standardnotes.helper.plist",
    "~/Library/Preferences/org.standardnotes.standardnotes.plist",
    "~/Library/Saved Application State/org.standardnotes.standardnotes.savedState",
  ]
end
