cask "standard-notes" do
  arch arm: "arm64", intel: "x64"

  version "3.151.8"
  sha256 arm:   "41c8edb98a03549ed869faaccbce12332741c1a4d4f659369fab5a5119fd64b8",
         intel: "ca1492e97188bc6847d0e84f9b1d475d7cad4922bb946cb7aa8203ed7f65e0db"

  url "https://github.com/standardnotes/app/releases/download/%40standardnotes%2Fdesktop%40#{version}/standard-notes-#{version}-mac-#{arch}.zip",
      verified: "github.com/standardnotes/app/"
  name "Standard Notes"
  desc "Free, open-source, and completely encrypted notes app"
  homepage "https://standardnotes.org/"

  livecheck do
    url "https://standardnotes.com/download"
    regex(/standard-notes-(\d+(?:\.\d+)+)-mac-#{arch}\.dmg/i)
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
