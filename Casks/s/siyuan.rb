cask "siyuan" do
  arch arm: "-arm64"

  version "3.6.0"
  sha256 arm:   "9409c065e4050f9f86c40aa887864e5f11c7dc939e84bd3a3b3bf29b078ba506",
         intel: "6f2423a30900aad97e2dc86bd8f64ae5f45c0dc754491c0b5f88842225342566"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
