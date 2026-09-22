cask "siyuan" do
  arch arm: "-arm64"

  version "3.8.5"
  sha256 arm:   "f26f961e061eb2aac8b2e922adbdd97fab4f07af9cd92f6ea06c7276c527ab94",
         intel: "778dfbf81ef6fb3951a7b4094e511ce5a0087c0ee8134312c5ef7f20b1880b92"

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
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
