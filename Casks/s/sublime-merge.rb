cask "sublime-merge" do
  version "2132"
  sha256 "fa0ea0b2d97e2099c2746e9a7295a5b5fe208ed414d5887daf460eb0caad37f0"

  url "https://download.sublimetext.com/sublime_merge_build_#{version}_mac.zip"
  name "Sublime Merge"
  desc "Git client"
  homepage "https://www.sublimemerge.com/"

  livecheck do
    url "https://www.sublimemerge.com/updates/stable_update_check"
    strategy :json do |json|
      json["latest_version"]&.to_s
    end
  end

  auto_updates true
  conflicts_with cask: "sublime-merge@dev"
  depends_on :macos

  app "Sublime Merge.app"
  binary "#{appdir}/Sublime Merge.app/Contents/SharedSupport/bin/smerge"

  uninstall quit: "com.sublimemerge"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimemerge.sfl*",
    "~/Library/Application Support/Sublime Merge",
    "~/Library/Caches/com.sublimemerge",
    "~/Library/Preferences/com.sublimemerge.plist",
    "~/Library/Saved Application State/com.sublimemerge.savedState",
  ]
end
