cask "siyuan" do
  arch arm: "-arm64"

  version "3.5.6"
  sha256 arm:   "6c5b1b8afed83de19dc1bd17ea0754c559e48de45c146f2756c8bf21fb8a486b",
         intel: "6bee604300363e4ae178aa2d696297ab095a14ac234311a4f9d7caa6faf358d9"

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
