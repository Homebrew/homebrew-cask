cask "standard-notes" do
  arch arm: "arm64", intel: "x64"

  version "3.201.10"
  sha256 arm:   "421e595b8de65358e24a86ca274ff4cc6ad76a277ad81569abfe16feb1246d5c",
         intel: "f41b9fd6cd39a0948ad744eb7e9d3ec481cd809efc0e8e039f12cfac7e666101"

  url "https://github.com/standardnotes/app/releases/download/%40standardnotes%2Fdesktop%40#{version}/standard-notes-#{version}-mac-#{arch}.zip",
      verified: "github.com/standardnotes/app/"
  name "Standard Notes"
  desc "Free, open-source, and completely encrypted notes app"
  homepage "https://standardnotes.com/"

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
  depends_on macos: ">= :big_sur"

  app "Standard Notes.app"

  zap trash: [
    "~/Library/Application Support/Standard Notes",
    "~/Library/Caches/org.standardnotes.standardnotes",
    "~/Library/Caches/org.standardnotes.standardnotes.ShipIt",
    "~/Library/Preferences/org.standardnotes.standardnotes.helper.plist",
    "~/Library/Preferences/org.standardnotes.standardnotes.plist",
    "~/Library/Saved Application State/org.standardnotes.standardnotes.savedState",
  ]
end
