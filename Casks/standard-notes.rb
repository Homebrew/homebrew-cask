cask "standard-notes" do
  arch arm: "arm64", intel: "x64"

  version "3.23.164"
  sha256 arm:   "d651f26fdad04ac02ced3c5b3cb26dda4d0ff5109ab446927dc6853e47ba5d01",
         intel: "a70a420c8c376c68efca9dcc6e75bfcb88e706cc211d4ef4e20ea25eb4013154"

  url "https://github.com/standardnotes/app/releases/download/%40standardnotes%2Fdesktop%40#{version}/standard-notes-#{version}-mac-#{arch}.zip",
      verified: "github.com/standardnotes/app/"
  name "Standard Notes"
  desc "Free, open-source, and completely encrypted notes app"
  homepage "https://standardnotes.org/"

  livecheck do
    url "https://github.com/standardnotes/app/releases/latest"
    strategy :header_match
  end

  auto_updates true

  app "Standard Notes.app"

  zap trash: [
    "~/Library/Application Support/Standard Notes",
    "~/Library/Caches/org.standardnotes.standardnotes.ShipIt",
    "~/Library/Caches/org.standardnotes.standardnotes",
    "~/Library/Preferences/org.standardnotes.standardnotes.helper.plist",
    "~/Library/Preferences/org.standardnotes.standardnotes.plist",
    "~/Library/Saved Application State/org.standardnotes.standardnotes.savedState",
  ]
end
