cask "standard-notes" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "3.202.11"
  sha256 arm:          "8a8d85860487ddf9a9f89b6e06bf00e36d96dbe4ab99d0c41f52f7ff4d47bcaa",
         intel:        "6eadbf68056ceed370ddac11c68a6ef18ca46721f02813a36209c1292d9958bd",
         arm64_linux:  "355772d2356f475e730ec38109bef4bd1fc53c9b62a5c3b64e9cb344ba63f9a8",
         x86_64_linux: "9f58e1edaa32c612d4cc4c93ad42c6435a03e2ac7c762abb5441f70aca5b25b1"

  on_macos do
    app "Standard Notes.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.standardnotes.standardnotes.sfl*",
      "~/Library/Application Support/Standard Notes",
      "~/Library/Caches/org.standardnotes.standardnotes",
      "~/Library/Caches/org.standardnotes.standardnotes.ShipIt",
      "~/Library/Logs/Standard Notes",
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
