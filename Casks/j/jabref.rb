cask "jabref" do
  arch arm: "-arm64"

  version "5.10"
  sha256 arm:   "d1bdc61a8c62ad7b8a6a5e75af15e36f9c728a65b8a734b09534c977ceb02e65",
         intel: "07e867d958389efca029604b8d36531c9ed5ed2015cd3dc36109da06ef113f61"

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
