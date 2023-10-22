cask "jabref" do
  arch arm: "-arm64"

  version "5.11"
  sha256 arm:   "d53875651ef86c617b0728b20513552c9ce6065b09fefb5e6daa448eaf20976e",
         intel: "71becc574eaf8cfe741a033fd1458d612d18a6f9c5463c837b83b8c0594738c2"

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
