cask "jabref" do
  arch arm: "._arm64"

  version "5.9"
  sha256 arm:   "b99ccab858b46ac094237070718bbc408957f4dd0a011949806045841029d0b1",
         intel: "53db743600453ecca840547ddd43323c16d34bdd7ce69ce50b8f58bd1c27f3ad"

  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef-#{version}#{arch}.dmg",
      verified: "github.com/JabRef/jabref/"
  name "JabRef"
  desc "Reference manager to edit, manage and search BibTeX files"
  homepage "https://www.jabref.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "JabRef.app"

  zap trash: [
    "~/Library/Application Support/JabRef",
    "~/Library/Logs/jabref",
    "~/Library/Preferences/org.jabref.cli.plist",
    "~/Library/Saved Application State/org.jabref.cli.savedState",
    "/var/db/receipts/JabRef.bom",
    "/var/db/receipts/JabRef.plist",
  ]
end
