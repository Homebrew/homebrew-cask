cask "siyuan" do
  arch arm: "-arm64"

  version "3.8.12"
  sha256 arm:   "ad8f00c1df985d3079c6e8425c34b6eb3fff7a41f5c36fc900bc429586ea90af",
         intel: "b7a41c47cf09c7cd1b47d26b2eaa4264e0308a75e1b55603932e847a7529f94a"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  auto_updates true
  depends_on macos: :monterey

  app "SiYuan.app"
  binary "#{appdir}/SiYuan.app/Contents/Resources/kernel/SiYuan-Kernel", target: "siyuan"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Scripts/FJT3K7XAD8.org.b3log.siyuan.quicklook",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.b3log.siyuan.sfl*",
    "~/Library/Application Support/SiYuan",
    "~/Library/Application Support/SiYuan-Electron",
    "~/Library/Group Containers/FJT3K7XAD8.org.b3log.siyuan.quicklook",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
