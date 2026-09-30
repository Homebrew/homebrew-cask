cask "standard-notes" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "3.202.7"
  sha256 arm:          "cf665e59f197896bef22d52c8a75cf3c80bb24e3fefbde90ba6798a166f5b8a7",
         intel:        "1e4f047954cd5a7c2bc195558f277b9ab1446ff8e373d517f863511432890861",
         arm64_linux:  "69e1ff1948f0ea2e4e022a37b1fd7bb42613887cb0fc2d73fe7ea238663611dd",
         x86_64_linux: "ba769ff37d2733ea470cd00f402af86c63bff21451106eac6e9b525a25f05428"

  on_macos do
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
