cask "standard-notes" do
  arch arm: "arm64", intel: "x64"

  version "3.173.20"
  sha256 arm:   "fd27131a7199a9cb320842e9125969c87557c9e774de1c458a075567ceb938f8",
         intel: "8d8e93dc988de3903d703c051e2c39c37946bb28f21e8294555fefc710d3ab1e"

  url "https://github.com/standardnotes/app/releases/download/%40standardnotes%2Fdesktop%40#{version}/standard-notes-#{version}-mac-#{arch}.zip",
      verified: "github.com/standardnotes/app/"
  name "Standard Notes"
  desc "Free, open-source, and completely encrypted notes app"
  homepage "https://standardnotes.org/"

  # Using only desktop releases that are not marked as pre-release to align
  # with the auto-updater strategy used by the app.
  # See: https://github.com/Homebrew/homebrew-cask/pull/145753#issuecomment-1521465815
  livecheck do
    url "https://github.com/standardnotes/app/releases?q=prerelease%3Afalse"
    regex(%r{href=["'].*?tags/@standardnotes/desktop@(\d+(?:\.\d+)+).*?["']}i)
    strategy :page_match
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
