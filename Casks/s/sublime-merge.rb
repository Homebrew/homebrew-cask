cask "sublime-merge" do
  version "2136"
  sha256 "8b08e8a15a15f680002839afc76624e1a9895515b48b8cc41867e4c292648110"

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
    "~/Library/Caches/Sublime Merge",
    "~/Library/HTTPStorages/com.sublimemerge",
    "~/Library/Preferences/com.sublimemerge.plist",
    "~/Library/Saved Application State/com.sublimemerge.savedState",
  ]
end
