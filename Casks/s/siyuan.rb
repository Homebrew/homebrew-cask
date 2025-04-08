cask "siyuan" do
  arch arm: "-arm64"

  version "3.1.27"
  sha256 arm:   "d8e669a0dd617f94463087d993471fe6736bcdb12faf87be8eb9ae30a23a94b3",
         intel: "7652db5a60b8e1bb834a1119bef3fd493b154ef8076bdcffe8a2e31172caa9d2"

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
