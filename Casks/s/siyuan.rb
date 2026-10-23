cask "siyuan" do
  arch arm: "-arm64"

  version "3.8.8"
  sha256 arm:   "835257eeed0e661ef9e6d245a430d1188f897539876b9448aa22b802b501826d",
         intel: "743b826e5fb319ecabcdd1119d046296ab73ddcc0c700ee30818c010c87a5bce"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.b3log.siyuan.sfl*",
    "~/Library/Application Support/SiYuan",
    "~/Library/Application Support/SiYuan-Electron",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
