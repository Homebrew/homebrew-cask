cask "standard-notes" do
  arch arm: "arm64", intel: "x64"

  version "3.150.52"
  sha256 arm:   "7393e4af72970271b3a17096511830afb81984046241cc3f1b6c2db0133c9342",
         intel: "5d95b84fd38f84cb7f26b391cc2bf58b2d84dd4314f92382c5e148ac3a4f6615"

  url "https://github.com/standardnotes/app/releases/download/%40standardnotes%2Fdesktop%40#{version}/standard-notes-#{version}-mac-#{arch}.zip",
      verified: "github.com/standardnotes/app/"
  name "Standard Notes"
  desc "Free, open-source, and completely encrypted notes app"
  homepage "https://standardnotes.org/"

  livecheck do
    url "https://github.com/standardnotes/app/releases"
    strategy :page_match
    regex(/Desktop\s+(\d+(?:\.\d+)+)/i)
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
