cask "standard-notes" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.22.17"

  if Hardware::CPU.intel?
    sha256 "97a4b38c6d10299b5b28695b1b5a2f097b6982002f318316c70c390d23a40f3d"
  else
    sha256 "bd55b24c097a81f77fd280d88d03be4d2718f932445f1cbeff027b52025a4120"
  end

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
