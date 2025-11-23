cask "siyuan" do
  arch arm: "-arm64"

  version "3.4.0"
  sha256 arm:   "a2bd22e058f32b3bb6898fbc910c82a2fa102546a27b0c478f760ea59678a332",
         intel: "b248c7599115fc0523f0ae44960783e09742b02e18ba9a1f0f1cc64cbf22ccc6"

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
