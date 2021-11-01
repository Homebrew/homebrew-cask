cask "boost-note" do
  version "0.21.2"
  sha256 "ba3b05e6c61abca306b854e0ca7611a5bac2c93be38256e66b407421d9125f0c"

  url "https://github.com/BoostIO/BoostNote.next/releases/download/v#{version}/boost-note-mac.dmg",
      verified: "github.com/BoostIO/BoostNote.next/"
  name "Boostnote.Next"
  desc "Markdown note editor for developers"
  homepage "https://boostnote.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Boost Note.app"

  uninstall signal: ["TERM", "com.boostio.boostnote"]

  zap trash: [
    "~/Library/Application Support/Boost Note",
    "~/Library/Preferences/com.boostio.boostnote.plist",
    "~/Library/Saved Application State/com.boostio.boostnote.savedState",
  ]
end
