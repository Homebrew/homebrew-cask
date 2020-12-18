cask "sublime-merge" do
  version "2039"
  sha256 "ca75357a0dce378d0b5fe02fff96def4505c6255e27a00c14be71b22318e4c2f"

  url "https://download.sublimetext.com/sublime_merge_build_#{version}_mac.zip",
      verified: "download.sublimetext.com/"
  appcast "https://www.sublimemerge.com/updates/stable_update_check"
  name "Sublime Merge"
  desc "Git client"
  homepage "https://www.sublimemerge.com/"

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/sublime-merge-dev"

  app "Sublime Merge.app"
  binary "#{appdir}/Sublime Merge.app/Contents/SharedSupport/bin/smerge"

  uninstall quit: "com.sublimemerge"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimemerge.sfl*",
    "~/Library/Application Support/Sublime Merge",
    "~/Library/Caches/com.sublimemerge/",
    "~/Library/Preferences/com.sublimemerge.plist",
    "~/Library/Saved Application State/com.sublimemerge.savedState",
  ]
end
