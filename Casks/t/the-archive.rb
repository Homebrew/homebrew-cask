cask "the-archive" do
  version "1.7.11"
  sha256 "65cf6fb183aee30ca71a433d56eb5885e4188e30a2fd445140c2b2feda4c9794"

  url "https://dlyfuw95744jo.cloudfront.net/TheArchive-v#{version}.dmg",
      verified: "dlyfuw95744jo.cloudfront.net/"
  name "The Archive"
  desc "Note Taking: Nimble, Calm, Plain.txt"
  homepage "https://zettelkasten.de/the-archive/"

  livecheck do
    url "https://zettelkasten.de/the-archive/download"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "The Archive.app"

  uninstall quit: [
    "de.zettelkasten.TheArchive",
    "de.zettelkasten.TheArchive.QuickEntryHelper",
  ]

  zap trash: [
    "~/Library/Application Support/TheArchive",
    "~/Library/Caches/de.zettelkasten.TheArchive",
    "~/Library/Group Containers/FRMDA3XRGC.de.zettelkasten.TheArchive.prefs",
    "~/Library/Logs/TheArchive",
    "~/Library/Preferences/de.zettelkasten.TheArchive.plist",
    "~/Library/Preferences/de.zettelkasten.TheArchive.QuickEntryHelper.plist",
    "~/Library/Preferences/group.de.zettelkasten.TheArchive.prefs.plist",
    "~/Library/Saved Application State/de.zettelkasten.TheArchive.savedState",
    "~/Library/WebKit/de.zettelkasten.TheArchive",
  ]
end
