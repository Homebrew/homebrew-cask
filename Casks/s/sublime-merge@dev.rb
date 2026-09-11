cask "sublime-merge@dev" do
  version "2129"
  sha256 "7b3615e29591cd5f0e383173355f53678f491cea736b1c5f773d13941d6eb752"

  url "https://download.sublimetext.com/sublime_merge_build_#{version}_mac.zip"
  name "Sublime Merge"
  desc "Git client"
  homepage "https://www.sublimemerge.com/dev"

  livecheck do
    url "https://www.sublimemerge.com/updates/dev_update_check"
    strategy :json do |json|
      json["latest_version"]&.to_s
    end
  end

  auto_updates true
  conflicts_with cask: "sublime-merge"
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
