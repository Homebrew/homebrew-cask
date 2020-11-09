cask "sublime-merge" do
  version "2038"
  sha256 "b6478a0a4de0c78813d74e40a2ca98d6df3c1ba9950bcd9d52c13f13ad9c63fc"

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
