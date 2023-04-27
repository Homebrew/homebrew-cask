cask "standard-notes" do
  arch arm: "arm64", intel: "x64"

  version "3.153.11"
  sha256 arm:   "782de1bab1083b2003b41bd5b83004418d710968e13035bf38d08e14ea330965",
         intel: "a7ad711ac827090be314ee7e215ca80a830636e25d2e2c082f3dc04bb4ec4d2b"

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
