cask "standard-notes" do
  arch arm: "arm64", intel: "x64"

  version "3.23.193"
  sha256 arm:   "b811796ce71f0fd652caa7500a992210fc34b1d1c0fc6a2008ce858af2e680c0",
         intel: "883f47b518428780d19aa6fef2f1652e16d0c4e9a301bb95df6a9ac2f8008267"

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
