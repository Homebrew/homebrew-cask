cask "standard-notes" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "3.202.0"
  sha256 arm:          "13c6e69c20954dfde5b7063b824dee4cb6eaf521450378f3e615405e284a26b7",
         intel:        "fc63ce7776137e057c6b421f46e6d48255a4f7ff8314d0d91d00dc2dcfdd9afb",
         arm64_linux:  "2a8a5be561ce2f0dbbfe9b5d616e8ee9c062749f227304ff677ce6b3e9ef6525",
         x86_64_linux: "207e671836cbd7c6b43b6fc753748605e492aeeffafc637dc70a4435535cd265"

  on_macos do
    depends_on macos: :big_sur

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
  on_linux do
    app_image "standard-notes-#{version}-linux-#{arch}.AppImage", target: "Standard Notes.AppImage"

    zap trash: [
      "~/.config/Standard Notes",
      "~/.standardnotes",
    ]
  end

  url "https://github.com/standardnotes/app/releases/download/%40standardnotes%2Fdesktop%40#{version}/standard-notes-#{version}-#{os}-#{arch}.#{url_end}"
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
end
