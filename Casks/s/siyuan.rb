cask "siyuan" do
  arch arm: "-arm64"

  version "3.8.9"
  sha256 arm:   "633e7c37bfa310305a9d30eec2fde40dddf23da20fd9e43a7dd273428b834513",
         intel: "874f4e6c09f2c5c4194f0daa3c023e5122d67812b4f854fe0e317d249dd7eae4"

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
