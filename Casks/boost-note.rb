cask "boost-note" do
  version "0.16.0"
  sha256 "420d26d01c115cccaa353ccd280cd7ebdb45d6cc2f9b2b7ba3f29ac6f610fa0a"

  url "https://github.com/BoostIO/BoostNote.next/releases/download/v#{version}/boost-note-mac.dmg",
      verified: "github.com/BoostIO/BoostNote.next/"
  name "Boostnote.Next"
  desc "Markdown note editor for developers"
  homepage "https://boostnote.io/"

  app "Boost Note.app"

  uninstall signal: ["TERM", "com.boostio.boostnote"]

  zap trash: [
    "~/Library/Application Support/Boost Note",
    "~/Library/Preferences/com.boostio.boostnote.plist",
    "~/Library/Saved Application State/com.boostio.boostnote.savedState",
  ]
end
