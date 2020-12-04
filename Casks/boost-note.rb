cask "boost-note" do
  version "0.11.5"
  sha256 "ac35f0da94a74309c9f74b769350f9a130e8a6c41253000e7693955701712f64"

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
