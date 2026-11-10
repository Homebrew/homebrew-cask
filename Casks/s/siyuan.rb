cask "siyuan" do
  arch arm: "-arm64"

  version "3.8.10"
  sha256 arm:   "4e625d3c696f76b6201fccf812ea026450db254488fc6c3b9ae80902b529660c",
         intel: "7d854fcd2730658877bb6c1591990d41ff017e2f48b4a26fd4cb433d9b90291b"

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
