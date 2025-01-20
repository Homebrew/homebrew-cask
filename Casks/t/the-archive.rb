cask "the-archive" do
  version "1.8.1"
  sha256 "24daaced40fdc756d75c900e729e3cc38aefad1ab4a44e8886e3de85a863e688"

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
  depends_on macos: ">= :high_sierra"

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
