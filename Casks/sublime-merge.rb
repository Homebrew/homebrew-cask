cask "sublime-merge" do
  version "2032"
  sha256 "b9745ee3db14576f1f9500cbd9457a13f161c097efdf753f72090457bf5b13fa"

  # download.sublimetext.com/ was verified as official when first introduced to the cask
  url "https://download.sublimetext.com/sublime_merge_build_#{version}_mac.zip"
  appcast "https://www.sublimemerge.com/updates/stable_update_check"
  name "Sublime Merge"
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
