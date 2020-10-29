cask "boost-note" do
  version "0.10.1"
  sha256 "c6920dac2e1a1d337f9cfd2ccbefa482258ee82e44a59b33ed058c0d46d06861"

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
