cask "jabref" do
  arch arm: "-arm64"

  version "5.13"
  sha256 arm:   "4487b119781fcdc9559878280f54c8684062be746abbb9b95b54473a3fea3b1a",
         intel: "65f5fab28437af86b6105a43324c73e4530affca7f21b0487667aa161c7e126d"

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
    "/var/db/receipts/JabRef.bom",
    "/var/db/receipts/JabRef.plist",
    "~/Library/Application Support/JabRef",
    "~/Library/Logs/jabref",
    "~/Library/Preferences/org.jabref.cli.plist",
    "~/Library/Saved Application State/org.jabref.cli.savedState",
  ]
end
