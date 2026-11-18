cask "standard-notes" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "3.203.0"
  sha256 arm:          "207024ec4742c76d24057fc44989a3a2f64e22b08df85fcf6ecf1d9ac1094ed6",
         intel:        "75f184e78530e55b18854a312a4746dd71d11fc3128aece47c4ce332db47f150",
         arm64_linux:  "f7ee0b38dc27f0610ee7d8b673945d0b2605bbd0272f44e103436080be3dc11e",
         x86_64_linux: "fca8dca9f2bcf870efdb29032f4bae13c83f12b730d82a90a390cb2be8759d4a"

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
