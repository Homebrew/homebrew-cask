cask "standard-notes" do
  arch arm: "arm64", intel: "x64"

  version "3.183.22"
  sha256 arm:   "0e00da02372abaeb073715fbb78614baf57acd70d360a370e69c7bf2903951a7",
         intel: "71745bac0a3c6a6d6220fdae6b7aefe8099913abc9dbceae673b23d15a502bbd"

  url "https://github.com/standardnotes/app/releases/download/%40standardnotes%2Fdesktop%40#{version}/standard-notes-#{version}-mac-#{arch}.zip",
      verified: "github.com/standardnotes/app/"
  name "Standard Notes"
  desc "Free, open-source, and completely encrypted notes app"
  homepage "https://standardnotes.org/"

  # The app's auto-updater avoids versions marked as "pre-release" on GitHub,
  # so we do the same thing in this check.
  # See: https://github.com/Homebrew/homebrew-cask/pull/145753#issuecomment-1521465815
  # We specifically check the GitHub releases page with the `prerelease:false`
  # query (instead of using the `GithubReleases` strategy) because upstream
  # publishes a lot of pre-release versions and they may push the most recent
  # stable desktop release out of the most recent info from the GitHub API.
  livecheck do
    url "https://github.com/standardnotes/app/releases?q=prerelease%3Afalse"
    regex(%r{href=["']?[^"' >]*?/tag/%40standardnotes%2Fdesktop%40(\d+(?:\.\d+)+)["' >]}i)
    strategy :page_match
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
