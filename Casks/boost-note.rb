cask "boost-note" do
  version "0.10.2"
  sha256 "9f75421a743c610748cd652a32f278e4dd381385112a508c2168026e6fb79700"

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
