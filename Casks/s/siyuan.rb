cask "siyuan" do
  arch arm: "-arm64"

  version "3.1.28"
  sha256 arm:   "31dc64a79c8a6fe92d1261b0ba9aa3f45a3c31c896c17066ba023a60cfe6f02e",
         intel: "80456630f9304e84770f31622ea32037f23c24e011eaba05878f0eb571bd7797"

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
