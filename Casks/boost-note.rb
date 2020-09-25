cask "boost-note" do
  version "0.9.0"
  sha256 "7ec52d8dc2a7a0746b2e5efc5703fb16d1fc3ed6f8c170277d502580a1bf7331"

  # github.com/BoostIO/BoostNote.next/ was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/BoostNote.next/releases/download/v#{version}/boost-note-mac.dmg"
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
