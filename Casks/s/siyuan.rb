cask "siyuan" do
  arch arm: "-arm64"

  version "3.6.3"
  sha256 arm:   "3426f50f00ea5c1445523b355cb89eddd50ed106dc7248380977658fb2bb9d3c",
         intel: "519b867b0c7413c3a9bd420eb16b4697c47f78b22c82f65235503fcac7a848df"

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
