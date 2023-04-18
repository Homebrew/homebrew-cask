cask "standard-notes" do
  arch arm: "arm64", intel: "x64"

  version "3.151.0"
  sha256 arm:   "c08657348712c42f12cee18ede013072c4832abbb4ce2f86c32f1fa7a69814d2",
         intel: "c51b2e8fd7209c35b0a1ca3a51648a1a56d6657e41ed66e93630de99fbf920c9"

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
