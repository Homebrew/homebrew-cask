cask "standard-notes" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "3.202.10"
  sha256 arm:          "9fbb184484e87355e6f135cf474fec7c947f0e022f5c648723db45b941482861",
         intel:        "4bdb050d8f5633cac3f690a0abc3d71b7abbaf68f2b737a564f47bb96ec38c13",
         arm64_linux:  "d8a0a82f0ed6a9dca2dd3b457761314b1e4f4003f283f53a091ff7121fc3ee7a",
         x86_64_linux: "cf8c7ae3f3909192391523395bb90ec445f8ee69bcdea815bf438d35b455e81c"

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
