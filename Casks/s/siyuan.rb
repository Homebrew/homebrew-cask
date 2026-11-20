cask "siyuan" do
  arch arm: "-arm64"

  version "3.8.11"
  sha256 arm:   "30c3be91cac9e2b4644766f20b788725922097f18524f861cff065311b9ba4c0",
         intel: "7c48312d0c3eef367841b530506da4d8fa205ce62e13abdf7cb6bf234a574160"

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
