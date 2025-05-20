cask "siyuan" do
  arch arm: "-arm64"

  version "3.1.30"
  sha256 arm:   "0e8c6adf1ce45ce58ad695be6f8064d5ceb5a52fcb60f4217fbafd73384b52fc",
         intel: "c42566d7bf44ea36a7a8f4b09330e2a0bed9fe9b8242a284811e044f6c9c1544"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  depends_on macos: ">= :catalina"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
