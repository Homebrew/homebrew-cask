cask "siyuan" do
  arch arm: "-arm64"

  version "3.3.0"
  sha256 arm:   "59a6ec4017ba4b9042e1e852420c4bef32cb4e32ce86d4ae0769ea169b22c9ee",
         intel: "1d6913de40c83aeef2fc6f679db51b40b7009d34daf08528d85f2571a6b58793"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :catalina"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
