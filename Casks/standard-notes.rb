cask "standard-notes" do
  arch arm: "arm64", intel: "x64"

  version "3.150.54"
  sha256 arm:   "b47db897e11de022c3816804e5577acb8e618246cfb247af08a5557b68b5c69e",
         intel: "137a83fe30bc6b306f098ef9068726a68667ecdc36a4ddc1bd1b869e4f5662c6"

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
