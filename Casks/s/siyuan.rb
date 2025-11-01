cask "siyuan" do
  arch arm: "-arm64"

  version "3.3.6"
  sha256 arm:   "68a70a6f5e568ff6404efc3b839166d9c824dc9c23c2b0bd669dafc01f3b3121",
         intel: "7ac8f72495684ed4ae99e3cd8c94cd8ea12cb136ed0b021e591775c26d48d455"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
