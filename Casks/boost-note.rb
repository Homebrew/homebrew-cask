cask "boost-note" do
  version "0.17.1"
  sha256 "e73e9f3da3d9990acd751401154f31fbe2c38d0be7f8e8ff01ed319a8fc2bb6b"

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
