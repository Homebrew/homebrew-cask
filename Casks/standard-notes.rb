cask "standard-notes" do
  arch arm: "arm64", intel: "x64"

  version "3.151.9"
  sha256 arm:   "578d1e4a45c3d3a953d56b47e86f7286f8315f0fed7910bae4c398fbefd2d224",
         intel: "722503582d90597a0f904e72701d91da13a41a438107587c29de13cfb1424e4e"

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
