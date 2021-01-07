cask "boost-note" do
  version "0.12.3"
  sha256 "cf3c4e41accf53726276ff9b803793b3e9043e08d12f11a8598db9327b9a0db7"

  url "https://github.com/BoostIO/BoostNote.next/releases/download/v#{version}/boost-note-mac.dmg",
      verified: "github.com/BoostIO/BoostNote.next/"
  appcast "https://github.com/BoostIO/BoostNote.next/releases.atom"
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
